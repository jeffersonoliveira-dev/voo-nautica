class AddAttachmentDocumentPhotoToStudents < ActiveRecord::Migration
  def self.up
    change_table :students do |t|
      t.attachment :document_photo
    end
  end

  def self.down
    remove_attachment :students, :document_photo
  end
end
