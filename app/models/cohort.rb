class Cohort < ActiveRecord::Base
  validates :cohort_name, :teacher_name, presence: true
  belongs_to :user
  has_many :users
  has_many :entries
end
