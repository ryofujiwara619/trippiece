class ChangeDatatypeProjectIdOfPlanner < ActiveRecord::Migration
  def change
    change_column :planners, :project_id, :integer
  end
end
