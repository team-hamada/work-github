class Public::CustomersController < ApplicationController
  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def unsubscribe
  end

  def update
  end

  def withdraw
  end

  private

  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :email, :postal_code, :address, :telephone_number, :last_name_kana, :first_name_kana)
  end

end
