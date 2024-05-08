class AddContactsToContactBook < ActiveRecord::Migration[7.1]
  def change
    add_reference :contact_books, :contacts, null: true, foreign_key: true
  end
end
