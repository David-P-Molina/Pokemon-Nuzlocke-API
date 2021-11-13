class CreateTeammate < ActiveRecord::Migration[6.1]
  def change
    create_table :teammates do |t|
      t.string :nickname
      t.boolean :alive
      t.text :notes
      t.string :location_caught
      t.string :gender
      t.string :nature
      t.timestamps
    end
  end
end
