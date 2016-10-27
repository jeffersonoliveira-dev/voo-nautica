class Student < ActiveRecord::Base
  validates :name, :date_birth, :rg, :cpf, :date_emission, :organ_emitter,
            :nationality, :civil_status, :father_name, :mother_name, :email,
            :profession, :scholarity, :payment_type, presence: true

  has_attached_file :proof_of_address
  has_attached_file :document_photo
  validates_attachment :document_photo, :proof_of_address,
                       content_type: { content_type: ['image/jpg',
                                                      'image/jpeg',
                                                      'image/png'] }
  validates :proof_of_address, :document_photo, attachment_presence: true

  has_many :phones, dependent: :destroy
  accepts_nested_attributes_for :phones, allow_destroy: true,
                                         reject_if: :all_blank
  has_one :address, dependent: :destroy
  accepts_nested_attributes_for :address
  has_one :availability
  accepts_nested_attributes_for :availability

  enum payment_type: { cartao_de_credito: 0, boleto_bancario: 1 }
  enum course: { arrais_amador_e_motonauta: 0, arrais_amador: 1, motonauta: 2 }
  enum referrer: { ex_aluno: 0, amigo: 1, familia: 2, olx: 3, facebook: 4,
                   propaganda_de_rua: 5, cfb: 6, outro: 7 }
end
