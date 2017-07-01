class AddDepartureToProject < ActiveRecord::Migration
  def change
    add_column :projects, :departure_date, :date
    add_column :projects, :finish_date, :date
  end
end
