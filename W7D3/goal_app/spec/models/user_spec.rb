require 'rails_helper'

RSpec.describe User, type: :model do
  
  it {should validate_presence_of(:username)}
  it {should validate_presence_of(:password_digest)}
  it {should validate_length_of(:password).is_at_least(6)}
  
  subject(:a_person) {FactoryBot.create(:user)}

  it {should validate_uniqueness_of(:username)}
  it {should validate_uniqueness_of(:session_token)}

  describe '#ensure_session_token' do 
    it 'assigns a session token if none is given' do
      expect(FactoryBot.build(:user).session_token).not_to be_nil
    end
  end
  
  describe 'password_encryption' do
    it 'does not save password to the database' do
      FactoryBot.create(:user, username: 'Harry Potter')
      user = User.find_by(username: "Harry Potter")
      expect(user.password).not_to eq ("password")
    end

    it 'ensure password is encrypted using BCrypt' do
      expect(BCrypt::Password).to receive(:create).with ("abcdef")
      FactoryBot.build(:user, password: "abcdef")
    end
  end
  #implement later
  # describe 'associations' do
  #   it {should have_many(:)}
  # end

end
