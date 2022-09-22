class CreateLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :links do |t|
      t.string :url
      t.string :text

      t.integer :times_held # 開催回数
      t.integer :rank       # 写真アルバムの順序

      t.timestamps
    end
  end
end
