class Student < ActiveRecord::Base
  has_attached_file :proof_of_address
  has_attached_file :document_photo

  validates :proof_of_address, :document_photo, attachment_presence: true

  validates :name, :date_birth, :rg, :cpf, :date_emission, :organ_emitter,
            :nationality, :civil_status, :father_name, :mother_name, :email,
            :cnh, :profession, :scholarity, :vessel, :vessel_experience,
            :payment_type, presence: true

  has_many :phones
  has_one :address
  has_many :courses
  has_one :availability
  has_one :referrer
  enum payment_type: { cartao_de_credito: 0, boleto_bancario: 1 }

  accepts_nested_attributes_for :phones, :address, :courses, :availability,
                                :referrer, allow_destroy: true
end
