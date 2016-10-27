class RemoveStudentToReferrer < ActiveRecord::Migration
  def change
    remove_reference :referrers, :student
  end
end
