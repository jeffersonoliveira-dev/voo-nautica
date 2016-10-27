class AddStudentToReferrer < ActiveRecord::Migration
  def change
    add_reference :referrers, :student, index: true, foreign_key: true
  end
end
