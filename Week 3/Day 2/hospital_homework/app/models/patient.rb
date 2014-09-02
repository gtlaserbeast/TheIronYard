class Patient < ActiveRecord::Base
  

  def birth_cannot_be_in_the_future
    unless birth.instance_of?(Date) && (birth <= Date.today)
      errors.add(:birth, "must be a DATE before today") 
    end
  end
  validates :birth, presence: true
  validate :birth_cannot_be_in_the_future
  validates :name, presence: true
  validates :gender, presence: true
  # validates :birth, :timeliness => {:on_or_before => lambda { Date.current }, :type => :date}
  validates :diagnosis, presence: true
end