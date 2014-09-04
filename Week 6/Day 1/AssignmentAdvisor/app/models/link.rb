class Link < ActiveRecord::Base
  belongs_to :homework
  validates :path, url: true
end
