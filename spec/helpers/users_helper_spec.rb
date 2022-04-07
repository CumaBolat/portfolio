RSpec.describe UsersHelper do

  before do
    @user = User.create(username: 'gariban', email: 'gariban@gmail.com',  password: 'gariban123')
    @user.save
    
    @first_transaction = Transaction.create(description: 'Test1', amount: 25, income_or_expense: true)
    @first_transaction.user = @user
    @first_transaction.save
    
    @second_transaction = Transaction.create(description: 'Test2', amount: 20, income_or_expense: true)
    @second_transaction.user = @user
    @second_transaction.save

    @third_transaction = Transaction.create(description: 'Test3', amount: 10, income_or_expense: false)
    @third_transaction.user = @user
    @third_transaction.save
  end

  it { expect(current_budget(@user)).to eq(35) }
end
