class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :boook_id
      t.string :user_id
      t.text :body

      t.timestamps
    end
  end
end
