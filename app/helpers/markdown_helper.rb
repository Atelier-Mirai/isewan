# https://github.com/vmg/redcarpet#and-you-can-even-cook-your-own
# http://k0kubun.hatenablog.com/entry/2013/09/19/223400
# http://qiita.com/hkengo/items/978ea1874cf7e07cdbfc
module MarkdownHelper
  class HTMLwithCoderay < Redcarpet::Render::HTML
    def block_code(code, language)
      language = language.present? ? language.split(':')[0] : ''
      lang = case language
             when 'rb' then     'ruby'
             when 'yml' then    'yaml'
             when 'css' then    'css'
             when 'html' then   'html'
             # when '';       lang = 'md'
             # else;          lang = language
             else; 'md'
      end
      CodeRay.scan(code, lang).div
    end

    def table(header, body)
      '<table class="ui table">' \
        "#{header}#{body}" \
      '</table>'
    end

    def preprocess(full_document)
      full_document.gsub!(/<([#]?\w+)(?:\s)([^=]+?)>/, "<span style='color:\\1;'>\\2</span>")
      full_document
    end

    def postprocess(full_document)
      full_document
    end
  end

  def markdown(text)
    return '' if text.blank?

    unless @markdown
      # htmlを無効にする 改行を楽にする
      renderer = HTMLwithCoderay.new(filter_html: false, no_styles: true, hard_wrap: true)
      # テーブルを使えるようにする、自動リンク可能にするなど、様々なオプション設定
      options = {
        autolink:            true,
        space_after_headers: true,
        no_intra_emphasis:   true, # 単語中ではemで囲まれていても強調しない
        fenced_code_blocks:  true, # ``` でコード
        tables:              true,
        hard_wrap:           true, # スペース２つ入れなくても <br> に
        xhtml:               true,
        lax_html_blocks:     true, # htmlタグ記述の際、前後の空行は不要
        strikethrough:       true, # ~~ で囲むと取り消し線
        underline:           true, # _で囲むとアンダーライン
        highlight:           true # ==で囲むとハイライト
      }
      @markdown = Redcarpet::Markdown.new(renderer, options)
    end

    sanitized_allowed_tags       = %w(div p br h1 h2 h3 h4 h5 h6 ol ul li hr a strong u i em del mark blockquote pre code table thead tbody tfoot tr th td span)
    sanitized_allowed_attributes = %w(style href class)
    # sanitize @markdown.render(text).html_safe, tags: sanitized_allowed_tags, attributes: sanitized_allowed_attributes
    sanitize @markdown.render(text), tags: sanitized_allowed_tags, attributes: sanitized_allowed_attributes
  end
end
