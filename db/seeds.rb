# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# user = CreateAdminService.new.call
#
#

business = Business.find_by_email("admin@indisdisplay.com")
business.outlets.new(business_id: business.id, name: "Mokapos 1", address: "Jln Panjang 1", city:"Jakarta Barat", state: "Jakarta", zip: "41456", phone_number: "081910298293").save
business.outlets.new(business_id: business.id, name: "Mokapos 2", address: "Jln Panjang 2", city:"Jakarta Barat", state: "Jakarta", zip: "41456", phone_number: "081910298293").save
business.outlets.new(business_id: business.id, name: "Mokapos 3", address: "Jln Panjang 3", city:"Jakarta Barat", state: "Jakarta", zip: "41456", phone_number: "081910298293").save
business.outlets.new(business_id: business.id, name: "Mokapos 4", address: "Jln Panjang 4", city:"Jakarta Barat", state: "Jakarta", zip: "41456", phone_number: "081910298293").save
puts 'CREATED ADMIN USER: ' << business.name
