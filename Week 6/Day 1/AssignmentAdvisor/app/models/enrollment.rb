class Enrollment < ActiveRecord::Base
  belongs_to :user
  belongs_to :cohort
  validates :user_id, presence: true
  validates :cohort_id, presence: true
  validates :cohort_id, uniqueness: true, :scope :user_id
end
