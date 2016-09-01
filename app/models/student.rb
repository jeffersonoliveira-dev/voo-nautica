class Student < ActiveRecord::Base
  validates :name, :date_birth, :rg, :cpf, :date_emission, :organ_emitter,
            :nationality, :civil_status, :father_name, :mother_name, :email,
            :cnh, :profession, :scholarity, :vessel, :vessel_experience,
            :payment_type, presence: true
  has_many :phones
  has_one :address
  has_many :courses
  has_one :availability
  has_one :refferer
  enum payment_type: { credit_card: 0, bank_slip: 1 }
end
