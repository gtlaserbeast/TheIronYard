class Location < ActiveRecord::Base
  has_many :cohorts
  has_many :courses, through: :cohorts
  validates :name, presence: true
<<<<<<< HEAD
  validates :name, uniqueness: true
=======
>>>>>>> e504574063bc8cc2cafecde85eb0a7fb40888492
  validates :address, presence: true
end
