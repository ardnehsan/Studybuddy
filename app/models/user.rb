class User < ActiveRecord::Base
  has_many :students
  has_many :cohorts, through: :students, dependent: :destroy
  has_many :comments
  attachment :photo
  has_secure_password
end
