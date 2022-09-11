class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.references :user
      t.string :skills
      t.time :stady_time
      t.timestamps
    end
  end
end
