class SettingController < ApplicationController
  before_action :authenticate_business!
  before_action :set_business, only: [:index, :update_business_information, :update_business_auth]
  respond_to :html
  def index
  end

  def update_business_information
    @business.update(business_information_params)
    respond_with(@business)
  end

  def update_business_auth
    @business.update(business_auth_params)
    respond_with(@business)
  end

  private
  def set_business
    @business = current_business
  end

  def business_information_params
    params.require(:business_information).permit(:name, :address, :city, :state, :zip, :email)
  end

  def business_auth_params
    params.require(:business_auth).permit(:password, :password_confirmation, :new_password)
  end
end
