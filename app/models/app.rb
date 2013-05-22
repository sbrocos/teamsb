class App < ActiveRecord::Base
  attr_accessible :description_large, :description_short, :name
  has_many :appusers
  has_many :users, :through => :appusers

  validates :name, presence: true, :length => { maximum: 50}
  validates :description_short, presence: true, :length => { maximum: 100}
  validates :description_large, presence: true
end
