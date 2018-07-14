class PlaylistContent < ActiveRecord::Base
  mount_uploader :content, ContentUploader
  belongs_to :playlist
end
