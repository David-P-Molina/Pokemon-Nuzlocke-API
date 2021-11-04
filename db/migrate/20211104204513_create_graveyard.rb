class CreateGraveyard < ActiveRecord::Migration[6.1]
  def change
    create_table :graveyards do |t|
      t.string :name

      t.timestamps
    end
  end
end
