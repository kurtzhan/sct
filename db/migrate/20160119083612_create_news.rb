class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :name, :null => false
      t.text :description, :limit => 4294967295, :null => false
      t.string :slug, :null => false

      t.timestamps null: false
    end
  end
end
