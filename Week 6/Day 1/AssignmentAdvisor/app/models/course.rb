class Course < ActiveRecord::Base
  has_many :cohorts
  has_many :locations, through: :cohorts
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :description, presence: true
end
