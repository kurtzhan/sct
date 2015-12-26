class CreateSiteConfigs < ActiveRecord::Migration
  def change
    create_table :site_configs do |t|
      t.string :title
      t.string :meta_keywords
      t.string :meta_description

      t.timestamps null: false
    end
  end
end
