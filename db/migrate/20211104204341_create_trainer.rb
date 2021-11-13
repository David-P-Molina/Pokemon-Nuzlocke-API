class CreateTrainer < ActiveRecord::Migration[6.1]
  def change
    create_table :trainers do |t|
      t.string :name
      t.integer :in_game_id

      t.timestamps
    end
  end
end
