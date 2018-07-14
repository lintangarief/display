class ScreensController < ApplicationController
  before_action :set_screen, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_business!
  respond_to :html

  def index
    @outlets = current_business.outlets
    outletIds = @outlets.ids
    @screens = Display.where(outlet_id: outletIds)
  end
  def edit
  end

  def update
    @screen.update(screen_params)
    respond_with(@screen)
  end

  private
  def set_screen
    @screen = Display.find(params[:id])
  end

  def screen_params
    params.require(:screen).permit(:is_active, :mode, :code_display)
  end
end
