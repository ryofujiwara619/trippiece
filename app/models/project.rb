class Project < ActiveRecord::Base
  validates :title,presence:true;
  validates :destination,presence:true;
  validates :introduction,presence:true;
  validates :departure_date,presence:true;
  validates :finish_date,presence:true;

  mount_uploader :image, ImageUploader
  # has_many :users, through: :participants
  # has_many :participants
  # accepts_nested_attributes_for :participants

  has_one :user, through: :planners
  has_many :planners
  accepts_nested_attributes_for :planners
end
