class AddOrdinalToProductsAndCategories < ActiveRecord::Migration
  def change
    add_column :products, :ordinal, :integer, :after => :name, :null => false, :default => 1
    add_column :categories, :ordinal, :integer, :after => :name, :null => false, :default => 1
  end
end
