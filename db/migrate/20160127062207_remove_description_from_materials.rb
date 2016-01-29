class RemoveDescriptionFromMaterials < ActiveRecord::Migration
  def change
    remove_column :materials, :description
  end
end
