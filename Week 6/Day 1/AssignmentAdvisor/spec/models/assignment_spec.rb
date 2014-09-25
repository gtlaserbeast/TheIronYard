require 'rails_helper'

RSpec.describe Assignment, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe Assignment do
    it 'should validate presence of :cohort_id' do
      subject.should validate_presence_of :cohort_id
    end
    it 'should validate presence of :name' do
      subject.should validate_presence_of :name
    end
    it 'should validate presence of :due_date' do
      subject.should validate_presence_of :due_date
    end
    it 'should validate presence of :description' do
      subject.should validate_presence_of :description
    end
  end
end