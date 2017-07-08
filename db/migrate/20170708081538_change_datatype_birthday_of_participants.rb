class ChangeDatatypeBirthdayOfParticipants < ActiveRecord::Migration
  def change
    change_column :participants, :birthday, :date
  end
end
