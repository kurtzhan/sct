class AddColumnsToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :company, :string, :after => :id
    add_column :messages, :country, :string, :after => :company
    add_column :messages, :address, :string, :after => :country
    add_column :messages, :zip_code , :string, :after => :address
    add_column :messages, :gender, :string, :after => :zip_code
    add_column :messages, :name, :string, :after => :gender
    add_column :messages, :email_2, :string, :after => :email
    add_column :messages, :telephone, :string, :after => :email_2
  end
end
