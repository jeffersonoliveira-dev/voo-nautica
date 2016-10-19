class Phone < ActiveRecord::Base
  belongs_to :student
  validates :number, :phone_type, presence: true

  enum phone_type: { telefone: 0, celular: 1 }
end
