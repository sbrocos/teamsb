class Appuser < ActiveRecord::Base
  attr_accessible :app_id, :user_id
  belongs_to :user
  belongs_to :app

  validates :user_id,  presence: true
end
