class CreateLates < ActiveRecord::Migration[5.2]
  def change
    create_table :lates do |t|
      t.date :date
      t.string :schedule
      t.boolean :impediment

      t.timestamps
    end
  end
end
