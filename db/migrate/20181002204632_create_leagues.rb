class CreateLeagues < ActiveRecord::Migration[5.1]
  def change
    create_table :leagues do |t|
      t.string :Name
      t.string :Location
      t.integer :Num_Lanes
      t.integer :PositionRounds
      t.integer :BowlersPerTeam

      t.timestamps
    end
  end
end
