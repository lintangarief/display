class Playlist < ActiveRecord::Base
  has_one :business
  has_many :playlist_contents
  accepts_nested_attributes_for :playlist_contents
end
