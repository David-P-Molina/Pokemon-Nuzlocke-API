class CreateGeneration < ActiveRecord::Migration[6.1]
  def change
    create_table :generations do |t|
      t.string :region
      t.string :release_date

      t.timestamps
    end
  end
end
