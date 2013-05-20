class App < ActiveRecord::Base
  attr_accessible :description_large, :description_short, :name

  validates :name, presence: true
  validates :description_short, presence: true
  validates :description_large, presence: true
end
