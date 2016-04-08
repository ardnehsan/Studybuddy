class User < ActiveRecord::Base
  has_many :cohorts
  has_secure_password
end
