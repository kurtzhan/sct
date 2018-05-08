class AddLanguageToTables < ActiveRecord::Migration
  def change
    add_column :categories, :language_id, :integer, :after => :name
    add_column :products, :language_id, :integer, :after => :name
    add_column :news, :language_id, :integer, :after => :name
    add_column :site_configs, :language_id, :integer, :after => :meta_description
  end
end
