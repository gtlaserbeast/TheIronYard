require 'rails_helper'

RSpec.describe Location, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe Location do
    it 'should validate presence of :name' do
      subject.should validate_presence_of :name
    end
    it 'should validated uniqueness of :name' do
      subject.should validate_uniqueness_of :name
    end
    it 'should validate presence of :address' do
      subject.should validate_presence_of :address
    end
  end
end