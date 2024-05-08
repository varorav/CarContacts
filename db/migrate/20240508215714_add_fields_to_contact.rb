class AddFieldsToContact < ActiveRecord::Migration[7.1]
  def change
    add_column :contacts, :name, :string
    add_column :contacts, :phone_number, :string
    add_column :contacts, :instagram, :string
    add_column :contacts, :address, :string
    add_column :contacts, :note, :string
  end
end
