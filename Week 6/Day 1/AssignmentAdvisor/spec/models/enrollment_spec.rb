require 'rails_helper'

RSpec.describe Enrollment, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe Enrollment do
    it 'should validate presence of :cohort_id' do
      subject.should validate_presence_of :cohort_id
    end
    it 'should validate presence of :user_id' do
      subject.should validate_presence_of :user_id
    end
    it 'should validate uniqueness of :user_id' do
      enrollment = Enrollment.new
      enrollment.should validate_uniqueness_of(:user_id).scoped_to(:cohort_id).with_message('already exists')
    end
  end
end