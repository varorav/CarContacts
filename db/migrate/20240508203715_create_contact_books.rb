class CreateContactBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :contact_books do |t|

      t.timestamps
    end
  end
end
