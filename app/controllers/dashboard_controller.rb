class DashboardController < ApplicationController
  before_action :authenticate_business!
  def index
    @outlets = current_business.outlets
    @total_playlist = current_business.playlists.length
    outletIds = @outlets.ids
    @displays = Display.where(outlet_id: outletIds)
  end
end
