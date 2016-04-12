class User < ActiveRecord::Base
  has_many :cohorts
  has_many :comments
  attachment :photo
  has_secure_password
end
