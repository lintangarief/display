class PlaylistsController < ApplicationController
  before_action :authenticate_business!, only: [:edit, :update, :destroy]
  before_action :set_playlist, only: [:show, :edit, :update, :destroy]
  def index
    @outlets = current_business.outlets
    @playlists = current_business.playlists
    outletIds = @outlets.ids
    @displays = Display.where(outlet_id: outletIds)
    @total_playlist = @playlists.length
  end

  def new
    @current_business = current_business
    @playlist = Playlist.new
    @playlist_content = @playlist.playlist_contents.build
  end

  def edit
  end

  def create
    @playlist = Playlist.new(playlist_params)
    respond_to do |format|
      if @playlist.save
        if params[:playlist_contents]['content']['1'].blank?
          if !params[:playlist_contents]['content']['2']['0'].blank?
            params[:playlist_contents]['content']['2']['0'].each do |m|
              @playlist_content = @playlist.playlist_contents.create!(:content => m, :playlist_id => @playlist.id)
            end
          end
          if !params[:playlist_contents]['content']['2']['1'].blank?
            params[:playlist_contents]['content']['2']['1'].each do |m|
              @playlist_content = @playlist.playlist_contents.create!(:content => m, :playlist_id => @playlist.id)
            end
          end
        else
          if !params[:playlist_contents]['content']['1']['0'].blank?
            params[:playlist_contents]['content']['1']['0'].each do |m|
              @playlist_content = @playlist.playlist_contents.create!(:content => m, :playlist_id => @playlist.id)
            end
          end
        end

        format.html { redirect_to playlists_path, notice: 'Playlist was successfully created.' }
      else
        format.html { render action: 'new', notice: "Playlist can't be save,  please contact Administratior"  }
      end
    end
  end

  def destroy
    @playlist.destroy
    @playlist_contents.destroy_all
    respond_to do |format|
      format.html { redirect_to playlists_path, notice: 'Playlist was successfully deleted.' }
    end
  end

  private
  def set_playlist
    @playlist = current_business.playlists.find(params[:id])
    @playlist_contents = @playlist.playlist_contents
  end
  def playlist_params
    params.require(:playlist).permit(:name, :playlist_type, :template, :transition, :text_information, :backgroud_text, :color_text, :speed, :business_id, playlist_contents_attributes:
    [:id, :playlist_id, :content, :row, :col])
  end
end
