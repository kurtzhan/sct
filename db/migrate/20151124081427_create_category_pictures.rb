class CreateCategoryPictures < ActiveRecord::Migration
  def change
    create_table :category_pictures do |t|
      t.integer :category_id, :null => false
      t.integer :picture_id,  :null => false

      t.timestamps null: false
    end
    
    add_index :category_pictures, [:category_id, :picture_id], :unique => true, :name => 'uniq_category_id_picture_id'
  end
end
