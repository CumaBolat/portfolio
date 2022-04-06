class TransactionsController < ApplicationController
  before_action :logged_in_user

  def new
    @transaction = Transaction.new
    @transactions = current_user.transactions.order('transactions.created_at DESC').paginate(page: params[:page], per_page: 20)
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.user = current_user
    @transactions = current_user.transactions.order('transactions.created_at DESC').paginate(page: params[:page], per_page: 20)

    flash[:success] = if @transaction.save
                        'Amount was successfully added'
                      else
                        'Adamakıllı value ver amcık'
                      end

    redirect_back fallback_location: root_path
  end

  private

  def transaction_params
    params.require(:transaction).permit(:description, :amount, :income_or_expense)
  end
end
