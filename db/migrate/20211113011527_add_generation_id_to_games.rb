class AddGenerationIdToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :generation_id, :integer
  end
end
