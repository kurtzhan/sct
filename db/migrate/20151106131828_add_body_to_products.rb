class AddBodyToProducts < ActiveRecord::Migration
  def change
    add_column :products, :body, :text, :limit => 4294967295
  end
end
