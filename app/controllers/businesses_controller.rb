class BusinessesController < ApplicationController
  before_action :authenticate_business!
  def index
    @users = Business.all
  end

  def show
    @business = Business.find(params[:id])
    unless @business == current_user
      redirect_to root_path, :alert => "Access denied."
    end
  end

end
