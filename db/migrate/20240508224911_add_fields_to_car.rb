class AddFieldsToCar < ActiveRecord::Migration[7.1]
  def change
    add_column :cars, :chassis, :string
    add_column :cars, :make, :string
    add_column :cars, :model, :string
    add_column :cars, :year, :string
    add_column :cars, :trim, :string
    add_column :cars, :color, :string
  end
end
