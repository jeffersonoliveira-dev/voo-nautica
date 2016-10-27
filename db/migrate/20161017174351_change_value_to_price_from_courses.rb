class ChangeValueToPriceFromCourses < ActiveRecord::Migration
  def change
    rename_column :courses, :value, :price
  end
end
