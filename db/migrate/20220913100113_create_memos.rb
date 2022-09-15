class CreateMemos < ActiveRecord::Migration[6.0]
  def change
    create_table :memos do |t|
      t.string :title
      t.text :body
      t.datetime "discarded_at", precision: 6
      t.index ["discarded_at"], name: "index_posts_on_discarded_at"
      t.timestamps
    end
  end
end
