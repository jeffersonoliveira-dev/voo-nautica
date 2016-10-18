class AddStudentToAvailability < ActiveRecord::Migration
  def change
    add_reference :availabilities, :student, index: true, foreign_key: true
  end
end
