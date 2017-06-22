class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text :title, null: false, unique: true
      t.string :date, null: false
      t.string :destination, null: false
      t.string :activity
      t.text :introduction, null: false
      t.text :detail
      t.string :image
      t.integer :price
      t.string :apply_deadline
      t.integer :capacity
      t.integer :minimum_participants
      t.timestamps null: false
    end
  end
end
