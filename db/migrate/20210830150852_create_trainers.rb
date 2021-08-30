class CreateTrainers < ActiveRecord::Migration[6.1]
  def change
    create_table :trainers do |t|
      t.string :name
      t.integer :trainer_id_number
      t.integer :gym_badge
      t.string :region
      t.integer :pokemon_seen
      t.integer :pokemon_caught

      t.timestamps
    end
  end
end
