class CreateGenerations < ActiveRecord::Migration[6.1]
  def change
    create_table :generations do |t|
      t.string :region_name

      t.timestamps
    end
  end
end
