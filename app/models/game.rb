class Game < ApplicationRecord
    has_one :Team1_Team, foreign_key: 'team1_team_id'
    has_one :Team2_Team, foreign_key: 'team2_team_id'
end
