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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140528175848) do

  create_table "anecdote_chapitres", :force => true do |t|
    t.integer  "anecdote_id"
    t.integer  "chapitre_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "anecdote_chapitres", ["anecdote_id"], :name => "index_anecdote_chapitres_on_anecdote_id"
  add_index "anecdote_chapitres", ["chapitre_id"], :name => "index_anecdote_chapitres_on_chapitre_id"

  create_table "anecdotes", :force => true do |t|
    t.integer  "sujet_id"
    t.integer  "theme_id"
    t.text     "recit"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "chapitres", :force => true do |t|
    t.string   "titre"
    t.integer  "numero"
    t.integer  "scene_id"
    t.integer  "anecdote_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "lieus", :force => true do |t|
    t.string   "nom"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "periodes", :force => true do |t|
    t.date     "date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "perso_scenes", :force => true do |t|
    t.integer  "perso_id"
    t.integer  "scene_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "perso_scenes", ["perso_id"], :name => "index_perso_scenes_on_perso_id"
  add_index "perso_scenes", ["scene_id"], :name => "index_perso_scenes_on_scene_id"

  create_table "personnages", :force => true do |t|
    t.string   "nom"
    t.string   "prenom"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "scene_chapitres", :force => true do |t|
    t.integer  "scene_id"
    t.integer  "chapitre_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "scene_chapitres", ["chapitre_id"], :name => "index_scene_chapitres_on_chapitre_id"
  add_index "scene_chapitres", ["scene_id"], :name => "index_scene_chapitres_on_scene_id"

  create_table "scenes", :force => true do |t|
    t.integer  "lieu_id"
    t.integer  "perso_id"
    t.integer  "periode_id"
    t.text     "recit"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sujets", :force => true do |t|
    t.string   "nom"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "theme_anecdotes", :force => true do |t|
    t.integer  "theme_id"
    t.integer  "anecdote_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "theme_anecdotes", ["anecdote_id"], :name => "index_theme_anecdotes_on_anecdote_id"
  add_index "theme_anecdotes", ["theme_id"], :name => "index_theme_anecdotes_on_theme_id"

  create_table "themes", :force => true do |t|
    t.string   "nom"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
