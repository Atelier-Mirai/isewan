module ApplicationHelper
  def pretty_date(date, wday: false)
    case wday
    when false
      month = sprintf("%02d", date.month)
      day   = sprintf("%02d", date.day)
      "(#{month}/#{day})"
    when true
      "#{date.strftime("%-m/%-d")}(#{%w(日 月 火 水 木 金 土)[date.wday]})"
    end
  end

  def html_br(str)
    h(str).gsub(/(\r\n?)|(\n)/, "<br>").html_safe
  end

  def competitions_date(start_date, end_date)
    s = pretty_date(start_date, wday: true)
    s << "〜#{pretty_date(end_date, wday: true)}" if end_date
    return s
  end

  def decorated_contact(contact, url)
    if url.present?
      link_to url do
        tag.div(class: "ui blue tertiary button") do
          contact
        end
      end
    else
      tag.div(class: "ui black tertiary button") do
        contact
      end
    end
  end

  def decorated_phone(phone)
    if phone.present?
      link_to "tel:#{phone}" do
        tag.div(class: "ui blue tertiary button") do
          phone
        end
      end
    end
  end

  def decorated_email(email)
    if email.present?
      link_to "mailto:#{email}" do
        tag.div(class: "ui blue tertiary button") do
          email
        end
      end
    end
  end

  def tel_to(phone)
    if phone&.match?(/\d+-?\d+-?\d+/)
      link_to(phone, "tel:#{phone}")
    else
      phone
    end
  end

  def mail_to(email)
    valid_email_regex =/\A[\w+\-]+(\.[a-z\d\-]+)*+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    if email&.match?(valid_email_regex)
      link_to(email, "mailto:#{email}?Subject=Message")
    else
      email
    end
  end
end
