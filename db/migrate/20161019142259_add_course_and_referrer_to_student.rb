class AddCourseAndReferrerToStudent < ActiveRecord::Migration
  def change
    add_column :students, :course, :integer
    add_column :students, :referrer, :integer
  end
end
