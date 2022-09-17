class CreateLearningItems < ActiveRecord::Migration[6.0]
  def change
    create_table :learning_items do |t|
      t.string :name
      t.time :study_time
      t.references :user_id
      t.timestamps
    end
  end
end
