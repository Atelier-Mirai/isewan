class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.date    :start_date # 大会 開始日
      t.date    :end_date   # 大会 終了日
      t.string  :schedule_adjustment # 日程調整中の際に用いる

      t.string  :category   # 予選大会、愛知の大会、両方 の区分

      t.string  :name       # 大会名
      t.string  :place      # 開催場所
      t.string  :nor_url    # NOR(募集要項)
      t.string  :result_url # リザルト(結果)

      t.string  :contact    # 問い合わせ先
      t.string  :phone      # 問い合わせ先電話番号
      t.string  :url        # ウェブサイト
      t.string  :email      # 電子メール

      t.boolean :display    # 表示するならtrue

      t.timestamps
    end
  end
end
