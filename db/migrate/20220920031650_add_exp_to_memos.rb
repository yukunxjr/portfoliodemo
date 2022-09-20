class AddExpToMemos < ActiveRecord::Migration[6.0]
  def change
    add_column :memos, :exp, :integer, default: 50
  end
end
