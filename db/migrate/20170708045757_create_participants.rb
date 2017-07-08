class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :name, null:false
      t.integer :birthday, null:false
      t.text :address, null:false
      t.integer :tellnumber, null:false
      t.text :email, null:false
      t.integer :project_id, null:false

      t.timestamps null: false
    end
  end
end
