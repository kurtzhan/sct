class CreateFlashPictures < ActiveRecord::Migration
  def change
    create_table :flash_pictures do |t|
      t.integer :picture_id, :null => false
      t.integer :ordinal, :null => false, :default => 1

      t.timestamps null: false
    end
  end
end
