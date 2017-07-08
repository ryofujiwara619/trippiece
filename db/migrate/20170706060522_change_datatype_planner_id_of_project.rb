class ChangeDatatypePlannerIdOfProject < ActiveRecord::Migration
  def change
    change_column :projects, :planner_id, :integer
  end
end
