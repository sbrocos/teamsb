class App < ActiveRecord::Base
  attr_accessible :description_large, :description_short, :name
  has_and_belongs_to_many  :users

  validates :name, presence: true
  validates :description_short, presence: true
  validates :description_large, presence: true
end
