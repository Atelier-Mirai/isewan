class CreateWinners < ActiveRecord::Migration[7.0]
  def change
    create_table :winners do |t|
      t.integer :times
      t.string :isewan
      t.string :tech

      t.timestamps
    end
  end
end
