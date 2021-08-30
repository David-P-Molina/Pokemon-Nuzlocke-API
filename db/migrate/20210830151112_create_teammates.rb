class CreateTeammates < ActiveRecord::Migration[6.1]
  def change
    create_table :teammates do |t|
      t.references :trainer, null: false, foreign_key: true
      t.string :nickname
      t.references :pokemon, null: false, foreign_key: true
      t.boolean :alive
      t.text :notes
      t.string :location_caught

      t.timestamps
    end
  end
end
