class ApplicationController < ActionController::Base
  #before_action :authenticate_admin!, except: [:top]
  #before_action :authenticate_customer!, except: [:top, :about,]

  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    customers_my_page_path
  end


  def after_sign_out_path_for(resource)
    root_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :telephone_number, :is_deleted])
  end
end
