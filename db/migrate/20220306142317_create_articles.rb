class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :type
      t.string :title
      t.text :body
      t.boolean :display, default: true

      t.timestamps
    end
  end
end
