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

['en', 'cn'].each do |l|
  Language.find_or_create_by(:name => l)
end

['News', 'Exhibitions'].each do |l|
  NewsType.find_or_create_by(:name => l)
end

if SiteConfig.count == 0
  SiteConfig.create(:title => 'SCT', :meta_keywords => 'SCT', :meta_description => 'SCT', :language_id => 1)
  SiteConfig.create(:title => 'SCT', :meta_keywords => 'SCT', :meta_description => 'SCT', :language_id => 2)
end