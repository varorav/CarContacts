class AddCarsToContact < ActiveRecord::Migration[7.1]
  def change
    add_reference :contacts, :cars, null: false, foreign_key: true
  end
end
