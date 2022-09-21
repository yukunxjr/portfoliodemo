class AddExpToStudies < ActiveRecord::Migration[6.0]
  def change
    add_column :studies, :exp, :integer, default: 0
  end
end
