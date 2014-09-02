class Enrollment < ActiveRecord::Base
  belongs_to :user
  belongs_to :cohort
  has_one :location, through: :cohort
  has_one :course, through: :cohort
  accepts_nested_attributes_for :cohort, :user, :location, :course
end
