class League < ApplicationRecord
    has_many :bowlers
    has_many :teams
    has_many :weeks
    validates :Num_Lanes, numericality: { even: true }
end
