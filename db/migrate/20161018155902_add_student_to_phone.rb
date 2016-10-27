class AddStudentToPhone < ActiveRecord::Migration
  def change
    add_reference :phones, :student, index: true, foreign_key: true
  end
end
