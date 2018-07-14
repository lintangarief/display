class PagesController < ApplicationController
  before_action :authenticate_business!
  layout 'pages'
  def index
    @users = Business.all
  end

  def setting
  end

  def dashboard
  end
end
