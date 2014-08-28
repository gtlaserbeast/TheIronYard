class Assignment < ActiveRecord::Base
  belongs_to :cohort
  has_many :homeworks
  has_many :users, through: :homeworks
  has_many :comments, as: :commentable
  validates :cohort_id, presence: true
end
