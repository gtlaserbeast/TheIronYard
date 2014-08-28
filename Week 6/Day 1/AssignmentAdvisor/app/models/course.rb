class Course < ActiveRecord::Base
  has_many :cohorts
  validates :title, uniqueness: true
end
