# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
u = User.create(:login => "admin", :email => 'admin@thundersurvey.com', :password => 'changeme', :password_confirmation => 'changeme' )
u.activate!
r = Role.create(:title => "superuser")
u.roles << r
u.save(:validate => false)