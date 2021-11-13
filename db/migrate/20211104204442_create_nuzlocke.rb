class CreateNuzlocke < ActiveRecord::Migration[6.1]
  def change
    create_table :nuzlockes do |t|
      t.string :name
      t.string :difficulty

      t.timestamps
    end
  end
end
