# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_11_14_173210) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "players", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "position"
    t.integer "height_feet"
    t.integer "height_inches"
    t.integer "weight_pounds"
    t.string "team"
    t.bigint "team_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "season_averages", force: :cascade do |t|
    t.integer "games_played"
    t.integer "player_id"
    t.integer "season"
    t.integer "min"
    t.integer "fgm"
    t.integer "fga"
    t.integer "fg3m"
    t.integer "fg3a"
    t.integer "ftm"
    t.integer "fta"
    t.integer "oreb"
    t.integer "dreb"
    t.integer "reb"
    t.integer "ast"
    t.integer "stl"
    t.integer "blk"
    t.integer "turnover"
    t.integer "pf"
    t.integer "pts"
    t.integer "fg_pct"
    t.integer "fg3_pct"
    t.integer "ft_pct"
    t.integer "stats_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stats", force: :cascade do |t|
    t.integer "ast"
    t.integer "blk"
    t.integer "dreb"
    t.integer "fg3_pct"
    t.integer "fg3a"
    t.integer "fg3m"
    t.integer "fg_pct"
    t.integer "fga"
    t.integer "fgm"
    t.integer "ft_pct"
    t.integer "fta"
    t.integer "ftm"
    t.bigint "player_id", null: false
    t.bigint "season_average_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_id"], name: "index_stats_on_player_id"
    t.index ["season_average_id"], name: "index_stats_on_season_average_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "abbreviation"
    t.string "city"
    t.string "conference"
    t.string "division"
    t.string "full_name"
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_teams_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.string "user_name"
    t.string "password_digest"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "players", "teams"
  add_foreign_key "stats", "players"
  add_foreign_key "stats", "season_averages"
  add_foreign_key "teams", "users"
end
