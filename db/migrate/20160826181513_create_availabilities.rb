class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.date :date1
      t.date :date2
      t.date :date3
      t.date :date4

      t.timestamps null: false
    end
  end
end
