# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20181002215558) do

  create_table "bowler_scores", force: :cascade do |t|
    t.integer "Bowler_id"
    t.integer "Team_id"
    t.integer "Score"
    t.integer "Handicap"
    t.integer "Game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Bowler_id"], name: "index_bowler_scores_on_Bowler_id"
    t.index ["Game_id"], name: "index_bowler_scores_on_Game_id"
    t.index ["Team_id"], name: "index_bowler_scores_on_Team_id"
  end

  create_table "bowlers", force: :cascade do |t|
    t.string "Name"
    t.integer "CurrentHandicap"
    t.integer "CurrentAverage"
    t.integer "Team_id"
    t.integer "League_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["League_id"], name: "index_bowlers_on_League_id"
    t.index ["Team_id"], name: "index_bowlers_on_Team_id"
  end

  create_table "games", force: :cascade do |t|
    t.integer "Week_id"
    t.integer "GameNumber"
    t.integer "Team1_Team_id"
    t.integer "Team2_Team_id"
    t.integer "LaneSet"
    t.binary "IsProcessed"
    t.binary "IsPositionRound"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Team1_Team_id"], name: "index_games_on_Team1_Team_id"
    t.index ["Team2_Team_id"], name: "index_games_on_Team2_Team_id"
    t.index ["Week_id"], name: "index_games_on_Week_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.string "Name"
    t.string "Location"
    t.integer "Num_Lanes"
    t.integer "PositionRounds"
    t.integer "BowlersPerTeam"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "Name"
    t.integer "League_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["League_id"], name: "index_teams_on_League_id"
  end

  create_table "weeks", force: :cascade do |t|
    t.integer "Number"
    t.integer "League_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["League_id"], name: "index_weeks_on_League_id"
  end

end
