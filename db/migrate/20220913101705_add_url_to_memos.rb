class AddUrlToMemos < ActiveRecord::Migration[6.0]
  def change
    add_column :memos, :url, :string
  end
end
