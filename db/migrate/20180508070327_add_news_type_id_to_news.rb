class AddNewsTypeIdToNews < ActiveRecord::Migration
  def change
    add_column :news, :news_type_id, :integer, :after => :language_id, :null => false
  end
end
