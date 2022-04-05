class CreateGalleries < ActiveRecord::Migration[7.0]
  def change
    create_table :galleries do |t|
      t.string :type
      t.string :title
      t.string :url
      t.boolean :display, default: true

      t.timestamps
    end
  end
end
