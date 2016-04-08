class Cohort < ActiveRecord::Base
  validates :cohort_name, :teacher_name, presence: true
  belongs_to :user
end
