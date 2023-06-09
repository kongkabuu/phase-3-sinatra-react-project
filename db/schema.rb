ActiveRecord::Schema.define(version: 2023_06_08_122046) do

  create_table "Article", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "image_path"
    t.integer "likes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
