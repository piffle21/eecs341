class CreateGameSets < ActiveRecord::Migration
  def change
    create_table :game_sets do |t|
      t.integer :winner_id
      t.integer :loser_id
      t.integer :match_id

      t.timestamps
    end
  end
end
