class Homework < ActiveRecord::Base
  belongs_to :user
  belongs_to :assignment
  has_many :comments, as: :commentable
  validates :assignment_id, presence: true
<<<<<<< HEAD
  validates_uniqueness_of :user, scope: [:user_id, :assignment_id]
=======
  validates :assignment_id, uniqueness: :scope :user_id
>>>>>>> e504574063bc8cc2cafecde85eb0a7fb40888492
end
