require 'rails_helper'

RSpec.describe Course, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe Course do
    it 'should validate presence of :title' do
      subject.should validate_presence_of :title
    end
    it 'should validated uniqueness of :title' do
      subject.should validate_uniqueness_of :title
    end
    it 'should validate presence of :description' do
      subject.should validate_presence_of :description
    end
  end
end