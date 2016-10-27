class AddAttachmentProofOfAddressToStudents < ActiveRecord::Migration
  def self.up
    change_table :students do |t|
      t.attachment :proof_of_address
    end
  end

  def self.down
    remove_attachment :students, :proof_of_address
  end
end
