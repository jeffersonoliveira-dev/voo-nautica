class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.date :date_birth
      t.string :rg
      t.string :cpf
      t.date :date_emission
      t.string :organ_emitter
      t.string :nationality
      t.string :civil_status
      t.string :father_name
      t.string :mother_name
      t.string :email
      t.string :profession
      t.string :scholarity
      t.boolean :vessel
      t.boolean :vessel_experience
      t.integer :payment_type
      t.binary :document_photo
      t.binary :proof_of_address

      t.timestamps null: false
    end
  end
end
