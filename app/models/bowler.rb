class Bowler < ApplicationRecord
  belongs_to :Team
  belongs_to :League
end
