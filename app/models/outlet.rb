class Outlet < ActiveRecord::Base
  has_one :business
  has_many :displays
end
