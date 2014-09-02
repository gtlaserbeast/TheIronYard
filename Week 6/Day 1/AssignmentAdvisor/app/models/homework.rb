class Homework < ActiveRecord::Base
  belongs_to :user
  belongs_to :assignment
  has_many :comments, as: :commentable
  validates :assignment_id, presence: true
  validates :user_id, presence: true
  validates_uniqueness_of :user, scope: [:user_id, :assignment_id]
end
