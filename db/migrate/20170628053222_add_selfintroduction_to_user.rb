class AddSelfintroductionToUser < ActiveRecord::Migration
  def change
    add_column :users, :selfintroduction, :text
    add_column :users, :image, :string
  end
end
