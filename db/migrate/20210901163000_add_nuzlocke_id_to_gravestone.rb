class AddNuzlockeIdToGravestone < ActiveRecord::Migration[6.1]
  def change
    add_reference :gravestones, :nuzlocke, null: false, foreign_key: true
  end
end
