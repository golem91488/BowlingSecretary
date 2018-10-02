class BowlerScore < ApplicationRecord
  belongs_to :Bowler
  belongs_to :Team
  belongs_to :Game
end
