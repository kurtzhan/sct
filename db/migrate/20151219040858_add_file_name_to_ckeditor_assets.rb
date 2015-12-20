class AddFileNameToCkeditorAssets < ActiveRecord::Migration
  def change
  	add_column :ckeditor_assets, :filename, :string
  end
end
