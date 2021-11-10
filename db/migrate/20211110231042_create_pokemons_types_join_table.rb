class CreatePokemonsTypesJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :pokemons, :types do |t|
      t.references :pokemon, null: false, foreign_key: true
      t.references :type, null: false, foreign_key: true
    end
  end
end
