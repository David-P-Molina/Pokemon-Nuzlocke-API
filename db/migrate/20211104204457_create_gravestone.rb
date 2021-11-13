class CreateGravestone < ActiveRecord::Migration[6.1]
  def change
    create_table :gravestones do |t|
      t.integer :level
      t.string :death
      t.string :notes

      t.timestamps
    end
  end
end
