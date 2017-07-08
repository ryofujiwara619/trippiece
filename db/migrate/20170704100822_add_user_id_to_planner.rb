class AddUserIdToPlanner < ActiveRecord::Migration
  def change
    add_column :planners, :user_id, :integer
  end
end
