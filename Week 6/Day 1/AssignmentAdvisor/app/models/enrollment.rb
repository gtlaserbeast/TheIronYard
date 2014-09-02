class Enrollment < ActiveRecord::Base
  belongs_to :user
  belongs_to :cohort
<<<<<<< HEAD
  has_one :location, through: :cohort
  has_one :course, through: :cohort
  validates_uniqueness_of :user, scope: [:user_id, :cohort_id]
  accepts_nested_attributes_for :cohort, :user, :location, :course
=======
  validates :user_id, presence: true
  validates :cohort_id, presence: true
  validates :cohort_id, uniqueness: true, :scope :user_id
>>>>>>> e504574063bc8cc2cafecde85eb0a7fb40888492
end
