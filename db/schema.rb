# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150610210355) do

  create_table "cards", force: true do |t|
    t.integer  "game_id"
    t.integer  "participation_id"
    t.integer  "card_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cards", ["game_id"], name: "index_cards_on_game_id"
  add_index "cards", ["participation_id"], name: "index_cards_on_participation_id"

  create_table "cups", force: true do |t|
    t.string   "name"
    t.integer  "league_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cups", ["league_id"], name: "index_cups_on_league_id"

  create_table "games", force: true do |t|
    t.integer  "round_id"
    t.integer  "local_inscription_id"
    t.integer  "away_inscription_id"
    t.integer  "player_of_the_match_id"
    t.boolean  "played",                 default: false
    t.datetime "play_time"
    t.string   "place"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "games", ["round_id"], name: "index_games_on_round_id"

  create_table "goals", force: true do |t|
    t.integer  "game_id"
    t.integer  "participation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "goals", ["game_id"], name: "index_goals_on_game_id"
  add_index "goals", ["participation_id"], name: "index_goals_on_participation_id"

  create_table "group_inscriptions", force: true do |t|
    t.integer  "group_id"
    t.integer  "inscription_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "group_inscriptions", ["group_id"], name: "index_group_inscriptions_on_group_id"
  add_index "group_inscriptions", ["inscription_id"], name: "index_group_inscriptions_on_inscription_id"

  create_table "groups", force: true do |t|
    t.integer  "stage_id"
    t.string   "name"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groups", ["stage_id"], name: "index_groups_on_stage_id"

  create_table "inscriptions", force: true do |t|
    t.integer  "version_id"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "inscriptions", ["team_id"], name: "index_inscriptions_on_team_id"
  add_index "inscriptions", ["version_id"], name: "index_inscriptions_on_version_id"

  create_table "league_users", force: true do |t|
    t.integer  "user_id"
    t.integer  "league_id"
    t.integer  "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "league_users", ["league_id"], name: "index_league_users_on_league_id"
  add_index "league_users", ["user_id"], name: "index_league_users_on_user_id"

  create_table "leagues", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "memberships", force: true do |t|
    t.integer  "user_id"
    t.integer  "team_id"
    t.integer  "role",       default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "memberships", ["team_id"], name: "index_memberships_on_team_id"
  add_index "memberships", ["user_id"], name: "index_memberships_on_user_id"

  create_table "participations", force: true do |t|
    t.integer  "inscription_id"
    t.integer  "user_id"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "participations", ["inscription_id"], name: "index_participations_on_inscription_id"
  add_index "participations", ["user_id"], name: "index_participations_on_user_id"

  create_table "rounds", force: true do |t|
    t.string   "name"
    t.integer  "stage_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rounds", ["stage_id"], name: "index_rounds_on_stage_id"

  create_table "stages", force: true do |t|
    t.string   "name"
    t.integer  "version_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stages", ["version_id"], name: "index_stages_on_version_id"

  create_table "teams", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "lastname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "versions", force: true do |t|
    t.string   "name"
    t.integer  "cup_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "versions", ["cup_id"], name: "index_versions_on_cup_id"

end
