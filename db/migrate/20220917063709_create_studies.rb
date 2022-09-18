class CreateStudies < ActiveRecord::Migration[6.0]
  def change
    create_table :studies do |t|
      t.float :time
      t.date :date
      t.references :learn
      t.timestamps
    end
  end
end
