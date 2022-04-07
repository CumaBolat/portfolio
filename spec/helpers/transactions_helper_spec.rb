RSpec.describe TransactionsHelper do
  subject(:transaction) { build(:transaction) }

  describe '#prefix_sign' do
    context 'when income' do
      it { expect(prefix_sign(transaction)).to eq('+') }
    end

    context 'when expense' do
      let(:transaction) { build(:transaction, income_or_expense: false) }

      it { expect(prefix_sign(transaction)).to eq('-') }
    end
  end
end
