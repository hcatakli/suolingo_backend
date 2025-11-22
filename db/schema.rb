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

ActiveRecord::Schema[8.0].define(version: 2025_11_20_130925) do
  create_table "courses", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "level"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pronunciation_attempts", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "word_id", null: false
    t.string "recording_url"
    t.float "score"
    t.text "feedback"
    t.datetime "attempted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_pronunciation_attempts_on_user_id"
    t.index ["word_id"], name: "index_pronunciation_attempts_on_word_id"
  end

  create_table "user_words", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "word_id", null: false
    t.string "status"
    t.datetime "last_practiced_at"
    t.integer "practice_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_words_on_user_id"
    t.index ["word_id"], name: "index_user_words_on_word_id"
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email"
    t.string "username"
    t.string "password_digest"
    t.integer "level"
    t.integer "total_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "word_audios", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "word_id", null: false
    t.string "audio_url"
    t.string "speaker_name"
    t.string "accent"
    t.float "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["word_id"], name: "index_word_audios_on_word_id"
  end

  create_table "word_videos", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "word_id", null: false
    t.string "video_url"
    t.string "speaker_name"
    t.string "accent"
    t.float "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["word_id"], name: "index_word_videos_on_word_id"
  end

  create_table "words", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "course_id", null: false
    t.string "term"
    t.text "definition"
    t.text "example_sentence"
    t.string "level"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_words_on_course_id"
  end

  add_foreign_key "pronunciation_attempts", "users"
  add_foreign_key "pronunciation_attempts", "words"
  add_foreign_key "user_words", "users"
  add_foreign_key "user_words", "words"
  add_foreign_key "word_audios", "words"
  add_foreign_key "word_videos", "words"
  add_foreign_key "words", "courses"
end
