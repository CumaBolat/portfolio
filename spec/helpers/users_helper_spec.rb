RSpec.describe UsersHelper do
  let(:user) { User.create(transactions: transactions) }
    
  let(:transactions) do
    [25, 30, 35].map do |amount|
    build(:transaction, amount: amount)
    end
  end

  it { expect(current_budget(user)).to eq(90) }
end
