class CreateRules < ActiveRecord::Migration[6.1]
  def change
    create_table :rules do |t|
      t.string :name
      t.string :content

      t.timestamps
    end
  end
end
