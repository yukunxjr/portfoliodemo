class RemoveSkillFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :slills, :string
  end
end
