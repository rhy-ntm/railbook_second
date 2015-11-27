class CreateBoooks < ActiveRecord::Migration
  def change
    create_table :boooks do |t|
      t.string :isbn
      t.string :title
      t.integer :price
      t.string :publish_id
      t.date :published
      t.boolean :cd

      t.timestamps
    end
  end
end
