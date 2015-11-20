class CreateProductAttachmentFiles < ActiveRecord::Migration
  def change
    create_table :product_attachment_files do |t|
      t.integer :product_id, :null => false
      t.integer :attachment_file_id, :null => false

      t.timestamps null: false
    end
  end
end
