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

# class Invoice < ActiveRecord::Base
#   validate :expiration_date_cannot_be_in_the_past,
#     :discount_cannot_be_greater_than_total_value
 
#   def expiration_date_cannot_be_in_the_past
#     if expiration_date.present? && expiration_date < Date.today
#       errors.add(:expiration_date, "can't be in the past")
#     end
#   end
 
#   def discount_cannot_be_greater_than_total_value
#     if discount > total_value
#       errors.add(:discount, "can't be greater than total value")
#     end
#   end
# end


