class AddColumnsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :title, :string
    add_column :products, :meta_keywords, :string
    add_column :products, :meta_description, :string
    add_column :products, :short_description, :text
  end
end
