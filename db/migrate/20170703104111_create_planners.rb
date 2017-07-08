class CreatePlanners < ActiveRecord::Migration
  def change
    create_table :planners do |t|
      t.string :project_id, null: false
      t.timestamps null: false
    end
  end
end
