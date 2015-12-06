class ChangeProductsColumnName < ActiveRecord::Migration
  def change
  	rename_column :products, :body, :description
  end
end
