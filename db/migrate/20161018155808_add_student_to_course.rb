class AddStudentToCourse < ActiveRecord::Migration
  def change
    add_reference :courses, :student, index: true, foreign_key: true
  end
end
