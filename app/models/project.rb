class Project < ActiveRecord::Base
  validates :title,presence:true;
  validates :destination,presence:true;
  validates :introduction,presence:true;
  validates :departure_date,presence:true;
  validates :finish_date,presence:true;

  mount_uploader :image, ImageUploader
  has_many :participants

  has_one :user, through: :planner
  has_one :planner
  accepts_nested_attributes_for :planner, allow_destroy: true
end
