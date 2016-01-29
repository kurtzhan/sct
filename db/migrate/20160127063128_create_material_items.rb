class CreateMaterialItems < ActiveRecord::Migration
  def change
    create_table :material_items do |t|
      t.string :name, :null => false
      t.string :slug, :null => false
      t.integer :material_id, :null => false
      t.text :description, :limit => 4294967295

      t.timestamps null: false
    end
  end
end
