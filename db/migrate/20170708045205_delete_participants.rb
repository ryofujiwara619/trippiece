class DeleteParticipants < ActiveRecord::Migration
  def change
    drop_table :participants
  end
end
