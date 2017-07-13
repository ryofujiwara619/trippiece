class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.integer :rate, null: false
      t.text  :review
      t.integer :user_id, null: false
      t.timestamps null: false
    end
  end
end
