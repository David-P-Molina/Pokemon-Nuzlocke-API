class CreateType < ActiveRecord::Migration[6.1]
  def change
    create_table :types do |t|
      t.string :name
      t.string :double_damage_from
      t.string :double_damage_to
      t.string :half_damage_from
      t.string :half_damage_to
      t.string :no_damage_from
      t.string :no_damage_to

      t.timestamps
    end
  end
end
