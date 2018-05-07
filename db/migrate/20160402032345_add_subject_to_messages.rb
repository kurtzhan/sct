class AddSubjectToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :subject, :string, :limit => 255, :after => :telephone
  end
end
