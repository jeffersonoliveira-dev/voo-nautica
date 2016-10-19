class Referrer < ActiveRecord::Base
  validates :referrer_type, presence: true
  belongs_to :student
  enum referrer_type: { ex_aluno: 0, amigo: 1, familia: 2, olx: 3, facebook: 4, propaganda_de_rua: 5, cfb: 6, outro: 7 }
end
