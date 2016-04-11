class Entry < ActiveRecord::Base
  validates :word, :definition, presence: true

  has_many :comments
end
