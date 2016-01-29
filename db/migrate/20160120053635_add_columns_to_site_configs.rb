class AddColumnsToSiteConfigs < ActiveRecord::Migration
  def change
    add_column :site_configs, :about_us, :text, :limit => 4294967295
    add_column :site_configs, :qc, :text, :limit => 4294967295
  end
end
