class ScheduleController < ApplicationController
  before_action :authenticate_business!
  def index
    @outlets = current_business.outlets
    @playlist = current_business.playlists
  end
end
