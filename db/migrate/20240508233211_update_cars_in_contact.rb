class UpdateCarsInContact < ActiveRecord::Migration[7.1]
  def change
    remove_reference :contacts, :cars, foreign_key: true
    add_reference :contacts, :cars, null: true, foreign_key: true
  end
end
