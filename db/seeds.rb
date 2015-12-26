# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Admin.count == 0
  Admin.create(:email => 'zlyaksa@yahoo.com', :password => '12345abc', :roles => [:superadmin])
end

if SiteConfig.count == 0
  SiteConfig.create(:title => 'Sino Bronze', :meta_keywords => 'Sino Bronze', :meta_description => 'Sino Bronze')
end
