class CreateGraveyards < ActiveRecord::Migration[6.1]
  def change
    create_table :graveyards do |t|
      t.references :trainer, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
