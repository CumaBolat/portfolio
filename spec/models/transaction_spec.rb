RSpec.describe User do
  subject(:action) { build(:transaction) }

  it { should belong_to :user }

  describe 'validations' do
    specify do
      expect(action).to allow_value(45).for(:amount)
      expect(action).not_to allow_value(0).for(:amount)
      expect(action).not_to allow_value(nil).for(:amount)
      expect(action).not_to allow_value(-45).for(:amount)
      expect(action).to validate_length_of(:description).is_at_least(5).is_at_most(255)
    end
  end
end
