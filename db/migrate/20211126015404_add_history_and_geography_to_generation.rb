class AddHistoryAndGeographyToGeneration < ActiveRecord::Migration[6.1]
  def change
    add_column :generations, :history, :string
    add_column :generations, :geography, :string
  end
end
