class CreateProductFeatures < ActiveRecord::Migration
  def change
    create_table :product_features do |t|
      t.integer :product_id
      t.integer :feature_id

      t.timestamps null: false
    end

    add_index :product_features, [:product_id, :feature_id], :unique => true, :name => 'uniq_product_id_feature_id'
  end
end
