class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.references :type, null: false, foreign_key: true
      t.text :description
      t.string :nature
      t.string :height
      t.float :weight
      t.string :gender

      t.timestamps
    end
  end
end
