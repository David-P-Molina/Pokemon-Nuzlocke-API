class CreatePokemon < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.string, :name
      t.id, :description
      t.string, :height
      t.string :weight

      t.timestamps
    end
  end
end
