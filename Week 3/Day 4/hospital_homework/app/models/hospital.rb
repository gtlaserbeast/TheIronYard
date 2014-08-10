class Hospital < ActiveRecord::Base
  has_many :patients
  validates :name, presence: true
  validates :capacity, presence: true
  validates :description, presence: true
end
