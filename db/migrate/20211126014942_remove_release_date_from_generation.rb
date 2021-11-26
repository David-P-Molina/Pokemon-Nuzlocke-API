class RemoveReleaseDateFromGeneration < ActiveRecord::Migration[6.1]
  def change
    remove_column :generations, :release_date, :string
  end
end
