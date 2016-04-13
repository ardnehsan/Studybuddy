class Cohort < ActiveRecord::Base
  validates :cohort_name, :teacher_name, presence: true

  has_many :students
  has_many :users, through: :students, dependent: :destroy
  has_many :entries

  def self.search(query)
  where("cohort_name like ?", "%#{query}%")
end
end
