class CreateGravestones < ActiveRecord::Migration[6.1]
  def change
    create_table :gravestones do |t|
      t.references :trainer, null: false, foreign_key: true
      t.integer :level
      t.string :death
      t.references :teammate, null: false, foreign_key: true
      t.string :notes
      t.references :nuzlocke, null: false, foreign_key: true

      t.timestamps
    end
  end
end
