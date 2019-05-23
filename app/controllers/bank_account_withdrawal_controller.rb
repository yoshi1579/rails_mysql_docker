class BankAccountWithdrawalController < ApplicationController

  def index
    render json: {'logged_in' => "yoshii"}
  end
end
