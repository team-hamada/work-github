class Public::CustomersController < ApplicationController
  def show
    
  end

  def edit
  end

  def unsubscribe
  end

  def update
  end

  def withdraw
  end

  private

  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :email, :postal_code, :address, :telephone_number)
  end

end
