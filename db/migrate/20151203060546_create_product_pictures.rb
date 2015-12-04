class CreateProductPictures < ActiveRecord::Migration
  def change
    create_table :product_pictures do |t|
      t.integer :product_id, :null => false
      t.integer :picture_id, :null => false

      t.timestamps null: false
    end

    add_index :product_pictures, [:product_id, :picture_id], :unique => true, :name => 'uniq_product_id_picture_id'
  end
end
