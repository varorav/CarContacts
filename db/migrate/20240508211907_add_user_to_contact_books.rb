class AddUserToContactBooks < ActiveRecord::Migration[7.1]
  def change
    add_reference :contact_books, :user, null: false, foreign_key: true
  end
end
