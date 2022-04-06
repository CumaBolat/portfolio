RSpec.describe User do
  subject(:user) { build(:user) }

  describe 'validations' do
    specify do
      expect(user).to allow_value('dev@gariban.com').for(:email)
      expect(user).to allow_value('dev3169@gariban.com').for(:email)
      expect(user).not_to allow_value('dev3169 @gariban.com').for(:email)
      expect(user).not_to allow_value('gariban').for(:email)
      expect(user).not_to allow_value(nil).for(:email)
      expect(user).to validate_length_of(:email).is_at_most(30)
      expect(user).to allow_value('Gariban').for(:username)
      expect(user).to allow_value('3169420').for(:username)
      expect(user).to allow_value('31 69 420').for(:username)
      expect(user).not_to allow_value(nil).for(:username)
      expect(user).to validate_length_of(:username).is_at_least(3).is_at_most(25)
    end
  end

  describe 'email downcase' do
    subject(:user) { create(:user, email: 'GARIBAN@gmail.com') }

    it 'downcases the email' do
      expect(user.email).to eq 'gariban@gmail.com'
    end
  end
end
