require 'rails_helper'

RSpec.describe Cohort, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe Cohort do
    it 'should validate presence of :course_id' do
      subject.should validate_presence_of :course_id
    end
    it 'should validate presence of :location_id' do
      subject.should validate_presence_of :location_id
    end
    it 'should validate presence of :start_date' do
      subject.should validate_presence_of :start_date
    end
    # it 'should disallow past dates for :start_date' do
    #   expect(subject.start_date_cannot_be_past).to ???????????
    # end
  end
end