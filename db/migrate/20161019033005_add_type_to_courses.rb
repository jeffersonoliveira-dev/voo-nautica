class AddTypeToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :type, :integer
  end
end
