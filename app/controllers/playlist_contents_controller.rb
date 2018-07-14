class PlaylistContentsController < ApplicationController
  before_action :set_playlist_content, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @playlist_contents = PlaylistContent.all
    respond_with(@playlist_contents)
  end

  def show
    respond_with(@playlist_content)
  end

  def new
    @playlist_content = PlaylistContent.new
    respond_with(@playlist_content)
  end

  def edit
  end

  def create
    @playlist_content = PlaylistContent.new(playlist_content_params)
    @playlist_content.save
    respond_with(@playlist_content)
  end

  def update
    @playlist_content.update(playlist_content_params)
    respond_with(@playlist_content)
  end

  def destroy
    @playlist_content.destroy
    respond_with(@playlist_content)
  end

  private
    def set_playlist_content
      @playlist_content = PlaylistContent.find(params[:id])
    end

    def playlist_content_params
      params.require(:playlist_content).permit(:playlist_id, :content, :col, :row)
    end
end
