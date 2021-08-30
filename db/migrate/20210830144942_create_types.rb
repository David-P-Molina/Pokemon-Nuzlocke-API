class CreateTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :types do |t|
      t.string :name
      t.string :description
      t.string :strong_against
      t.string :weak_against
      t.string :immue

      t.timestamps
    end
  end
end
