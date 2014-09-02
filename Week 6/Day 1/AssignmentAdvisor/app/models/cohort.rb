class Cohort < ActiveRecord::Base
  belongs_to :location
  belongs_to :course
  has_many :enrollments
  accepts_nested_attributes_for :location, :course
  has_many :users, through: :enrollments
  has_many :assignments
  def start_date_cannot_be_past
    unless start_date.instance_of?(Date) && (start_date >= Date.today)
      errors.add(:start_date, "must be a today or in the future") 
    end
  end
  validates :location_id, presence: :true
  validates :course_id, presence: :true
  validates :start_date, presence: :true
  validate :start_date_cannot_be_past
end