class AddUniqIndexToProductAttachmentFiles < ActiveRecord::Migration
  def change
    add_index :product_attachment_files, [:product_id, :attachment_file_id], :unique => true, :name => 'uniq_product_id_attachment_file_id'
  end
end
