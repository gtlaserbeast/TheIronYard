class Game < ActiveRecord::Base

  validates :title, presence: true
  validates :genre, presence: true
  validates :description, presence: true
end
