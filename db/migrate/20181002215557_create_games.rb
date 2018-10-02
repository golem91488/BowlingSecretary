class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.references :Week
      t.integer :GameNumber
      t.references :Team1_Team, foreign_key: { to_table: :teams } 
      t.references :Team2_Team, foreign_key: { to_table: :teams } 
      t.integer :LaneSet
      t.binary :IsProcessed
      t.binary :IsPositionRound

      t.timestamps
    end
  end
end
