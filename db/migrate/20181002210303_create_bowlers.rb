class CreateBowlers < ActiveRecord::Migration[5.1]
  def change
    create_table :bowlers do |t|
      t.string :Name
      t.integer :CurrentHandicap
      t.integer :CurrentAverage
      t.references :Team, foreign_key: true
      t.references :League, foreign_key: true

      t.timestamps
    end
  end
end
