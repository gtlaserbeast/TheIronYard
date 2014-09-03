require 'rails_helper'

RSpec.describe User, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe User do
    it 'should validate presence of :password' do
      user = User.new
      user.should validate_presence_of :password
    end
    it 'should validate presence of :email' do
      subject.should validate_presence_of :email
    end
  end
end