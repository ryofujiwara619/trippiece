class ChangeDatatypeTellnumberOfParticipants < ActiveRecord::Migration
  def change
    change_column :participants, :tellnumber, :string
  end
end
