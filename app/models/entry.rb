class Entry < ActiveRecord::Base
  validates :word, :definition, presence: true
  belongs_to :cohort
  has_many :comments
end
