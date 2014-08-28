class Location < ActiveRecord::Base
  has_many :cohorts
  has_many :courses, through: :cohorts
  validates :name, presence: true
  validates :address, presence: true
end
