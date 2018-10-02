class CreateBowlerScores < ActiveRecord::Migration[5.1]
  def change
    create_table :bowler_scores do |t|
      t.references :Bowler, foreign_key: true
      t.references :Team, foreign_key: true
      t.integer :Score
      t.integer :Handicap
      t.references :Game, foreign_key: true

      t.timestamps
    end
  end
end
