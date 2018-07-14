class Display < ActiveRecord::Base
  has_one :outlet
  enum status: {portrait: 1, landscape: 2}

  # def code_display
  #   outlet = self.outlet
  #   outlet_id_str = outlet.id.to_s
  #   outlet_id = outlet_id_str.length > 3  ? outlet_id_str.slice(outlet_id_str.length-3..outlet_id_str.length) : outlet_id_str
  #   business = outlet.business
  #   business_id_str = business.id.to_s
  #   business_id = business_id_str.length > 3  ? business_id_str.slice(business_id_str.length-3..business_id_str.length) : business_id_str
  #   display.code_display = "BI" + business_id + "OI" + outlet_id + "DI" + displah.code
  # end
end
