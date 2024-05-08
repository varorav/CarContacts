class AddContactToCar < ActiveRecord::Migration[7.1]
  def change
    add_reference :cars, :contact, null: false, foreign_key: true
  end
end
