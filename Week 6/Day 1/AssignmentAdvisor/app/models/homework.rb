class Homework < ActiveRecord::Base
  belongs_to :user
  belongs_to :assignment
  has_many :comments, as: :commentable
  validates :assignment_id, presence: true
  validates :assignment_id, uniqueness: :scope :user_id
end
