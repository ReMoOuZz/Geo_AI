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

ActiveRecord::Schema[7.1].define(version: 2025_09_03_125834) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "achievements", force: :cascade do |t|
    t.string "content"
    t.string "image"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_achievements_on_user_id"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "badges", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.string "description"
    t.string "icon"
    t.datetime "earned_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_badges_on_user_id"
  end

  create_table "chats", force: :cascade do |t|
    t.text "title"
    t.bigint "user_id", null: false
    t.bigint "quiz_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "model_id"
    t.index ["quiz_id"], name: "index_chats_on_quiz_id"
    t.index ["user_id"], name: "index_chats_on_user_id"
  end

  create_table "game_participants", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "game_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_game_participants_on_game_id"
    t.index ["user_id"], name: "index_game_participants_on_user_id"
  end

  create_table "game_questions", force: :cascade do |t|
    t.integer "order"
    t.bigint "game_id", null: false
    t.text "content"
    t.string "difficulty"
    t.string "category"
    t.string "region"
    t.string "correct_answer"
    t.text "incorrect_answers", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "contexte"
    t.index ["game_id"], name: "index_game_questions_on_game_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "difficulty"
    t.string "category"
    t.string "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "game_type"
  end

  create_table "messages", force: :cascade do |t|
    t.string "role"
    t.bigint "chat_id", null: false
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "model_id"
    t.bigint "tool_call_id"
    t.integer "input_tokens"
    t.integer "output_tokens"
    t.index ["chat_id"], name: "index_messages_on_chat_id"
    t.index ["tool_call_id"], name: "index_messages_on_tool_call_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "content"
    t.string "difficulty"
    t.string "category"
    t.string "region"
    t.string "correct_answer"
    t.text "incorrect_answers", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "contexte"
  end

  create_table "quizzes", force: :cascade do |t|
    t.text "module"
    t.text "content"
    t.integer "score"
    t.text "system_prompt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "messages", default: [], array: true
  end

  create_table "scores", force: :cascade do |t|
    t.integer "value", default: 0
    t.bigint "user_id", null: false
    t.bigint "game_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_scores_on_game_id"
    t.index ["user_id"], name: "index_scores_on_user_id"
  end

  create_table "solid_cable_messages", force: :cascade do |t|
    t.text "channel"
    t.text "payload"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["channel"], name: "index_solid_cable_messages_on_channel"
    t.index ["created_at"], name: "index_solid_cable_messages_on_created_at"
  end

  create_table "tool_calls", force: :cascade do |t|
    t.bigint "message_id", null: false
    t.string "tool_call_id"
    t.string "name"
    t.jsonb "arguments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["message_id"], name: "index_tool_calls_on_message_id"
    t.index ["tool_call_id"], name: "index_tool_calls_on_tool_call_id"
  end

  create_table "user_answers", force: :cascade do |t|
    t.string "content"
    t.bigint "user_id", null: false
    t.bigint "game_question_id", null: false
    t.bigint "game_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_correct"
    t.index ["game_id"], name: "index_user_answers_on_game_id"
    t.index ["game_question_id"], name: "index_user_answers_on_game_question_id"
    t.index ["user_id"], name: "index_user_answers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "pseudo"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "ranking"
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "achievements", "users"
  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "badges", "users"
  add_foreign_key "chats", "quizzes"
  add_foreign_key "chats", "users"
  add_foreign_key "game_participants", "games"
  add_foreign_key "game_participants", "users"
  add_foreign_key "game_questions", "games"
  add_foreign_key "messages", "chats"
  add_foreign_key "messages", "tool_calls"
  add_foreign_key "scores", "games"
  add_foreign_key "scores", "users"
  add_foreign_key "tool_calls", "messages"
  add_foreign_key "user_answers", "game_questions"
  add_foreign_key "user_answers", "games"
  add_foreign_key "user_answers", "users"
end
