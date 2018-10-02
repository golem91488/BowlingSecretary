class CreateWeeks < ActiveRecord::Migration[5.1]
  def change
    create_table :weeks do |t|
      t.integer :Number
      t.references :League, foreign_key: true

      t.timestamps
    end
  end
end
