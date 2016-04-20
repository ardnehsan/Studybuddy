class Student < ActiveRecord::Base
  belongs_to :user
  belongs_to :cohort
  has_many :comments
  
  validates :user, :cohort, presence: true
end
