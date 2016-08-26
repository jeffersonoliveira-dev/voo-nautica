class Student < ActiveRecord::Base
  validates :name, :date_birth, :rg, :cpf, :date_emission, :organ_emitter,
            :nationality, :civil_status, :father_name, :mother_name, :email,
            :profession, :scholarity, :vessel, :vessel_experience,
            :payment_type, :document_photo, :proof_of_address, presence: true
  has_many :phones
  has_one :address
  has_many :courses
  has_one :availability
  has_one :refferer
  enum payment_type: [:credit_card, :bank_slip]
end
