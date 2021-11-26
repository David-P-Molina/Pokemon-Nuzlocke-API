class AddDescriptionToGeneration < ActiveRecord::Migration[6.1]
  def change
    add_column :generations, :description, :string
  end
end
