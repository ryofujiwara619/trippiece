class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.integer :user_id, null: false, foreign_key: true
      t.integer :project_id, null: false, foreign_key: true
      t.timestamps null: false
    end
  end
end
