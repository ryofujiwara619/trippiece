class AddPlannerIdToProject < ActiveRecord::Migration
  def change
    add_column :projects, :planner_id, :string
  end
end
