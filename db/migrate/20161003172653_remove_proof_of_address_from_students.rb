class RemoveProofOfAddressFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :proof_of_address, :binary
  end
end
