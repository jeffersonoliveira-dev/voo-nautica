class AddCnhToStudents < ActiveRecord::Migration
  def change
    add_column :students, :cnh, :string
  end
end
