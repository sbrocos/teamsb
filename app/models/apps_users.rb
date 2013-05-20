class AppsUsers < ActiveRecord::Base
  attr_accessible :app_id, :user_id
  has_many :apps
  has_many :users
end
