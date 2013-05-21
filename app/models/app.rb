class App < ActiveRecord::Base
  attr_accessible :description_large, :description_short, :name
  has_and_belongs_to_many  :users

  validates :name, presence: true, :length => { maximum: 50}
  validates :description_short, presence: true, :length => { maximum: 100}
  validates :description_large, presence: true
end
