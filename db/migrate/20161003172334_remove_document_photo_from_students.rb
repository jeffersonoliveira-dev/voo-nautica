class RemoveDocumentPhotoFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :document_photo
  end
end
