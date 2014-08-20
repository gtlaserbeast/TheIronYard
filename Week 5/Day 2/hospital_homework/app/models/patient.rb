class Patient < ActiveRecord::Base
  belongs_to :dealership
  has_many :medications
  has_many :doctors, as: :doctorable
  include Workflow
  workflow do
    state :waiting do
      event :see_doctor, transitions_to: :with_doctor
      event :to_xray, transitions_to: :in_xray
      event :to_surgery, transitions_to: :in_surgery
      event :leave, transitions_to: :leaving
    end
    state :with_doctor do
      event :to_waiting, transitions_to: :waiting
      event :to_xray, transitions_to: :in_xray
      event :to_surgery, transitions_to: :in_surgery
      event :to_billing, transitions_to: :paying
    end
    state :in_xray do
      event :to_waiting, transitions_to: :waiting
      event :see_doctor, transitions_to: :with_doctor
      event :to_surgery, transitions_to: :in_surgery
      event :to_billing, transitions_to: :paying
    end
    state :in_surgery do
      event :to_waiting, transitions_to: :waiting
      event :see_doctor, transitions_to: :with_doctor
      event :to_xray, transitions_to: :in_xray
      event :to_billing, transitions_to: :paying
    end
    state :paying do
      event :leave, transitions_to: :leaving
    end
    state :leaving 
  end
  def birth_cannot_be_in_the_future
    unless birth.instance_of?(Date) && (birth <= Date.today)
      errors.add(:birth, "must be a DATE before today") 
    end
  end
  validates :birth, presence: true
  validate :birth_cannot_be_in_the_future
  validates :name, presence: true
  validates :gender, presence: true
  validates :diagnosis, presence: true
end