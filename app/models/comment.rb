class Comment < ActiveRecord::Base

  belongs_to :student
  belongs_to :entry

  validates :content, presence: true


end
