class CreateRule < ActiveRecord::Migration[6.1]
  def change
    create_table :rules do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
