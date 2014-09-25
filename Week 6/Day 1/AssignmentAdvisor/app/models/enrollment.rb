class Enrollment < ActiveRecord::Base
  belongs_to :user
  belongs_to :cohort
  has_one :location, through: :cohort
  has_one :course, through: :cohort
  validates :user_id, presence: true
  validates :cohort_id, presence: true
  validates :user_id, uniqueness: {scope: [:user_id, :cohort_id] }
  accepts_nested_attributes_for :cohort, :user, :location, :course
end
