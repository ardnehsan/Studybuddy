class Message < ActiveRecord::Base
  belongs_to :student
  belongs_to :cohort
  has_many :posts
end
