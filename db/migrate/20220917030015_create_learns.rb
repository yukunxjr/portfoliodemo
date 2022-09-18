class CreateLearns < ActiveRecord::Migration[6.0]
  def change
    create_table :learns do |t|
      t.string :name
      # t.float :study_time, default: 0
      t.references :user
      t.timestamps
    end
  end
end
