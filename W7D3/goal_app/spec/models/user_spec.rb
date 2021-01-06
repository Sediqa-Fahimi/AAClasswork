require 'rails_helper'

RSpec.describe User, type: :model do
  
  it {should validate_presence_of(:username)}
  it {should validate_presence_of(:password_digest)}
  it {should validate_length_of(:password).is_at_least(6)}
  
  subject(:user1) {FactoryBot.create(:user)}

  it {should validate_uniqueness_of(:username)}

  describe '#ensure_session_token' do 
    it 'assigns a session token if none is given' do
      expect(FactoryBot.build(:user).session_token).not_to be_nil
    end
  end
  
end
