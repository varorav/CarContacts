class AddContactBookToContact < ActiveRecord::Migration[7.1]
  def change
    add_reference :contacts, :contact_book, null: false, foreign_key: true
  end
end
