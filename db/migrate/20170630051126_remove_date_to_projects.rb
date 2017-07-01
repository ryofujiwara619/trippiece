class RemoveDateToProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :date, :string
  end
end
