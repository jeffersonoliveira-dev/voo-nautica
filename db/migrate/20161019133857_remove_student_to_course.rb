class RemoveStudentToCourse < ActiveRecord::Migration
  def change
    remove_reference :courses, :student
  end
end
