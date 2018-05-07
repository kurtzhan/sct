class AddColumnsToMaterialItems < ActiveRecord::Migration
  def change
    add_column :material_items, :title, :string, :after => :description
    add_column :material_items, :meta_keywords, :string, :after => :title
    add_column :material_items, :meta_description, :string, :after => :meta_keywords
  end
end
