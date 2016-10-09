class Phone < ActiveRecord::Base
  belongs_to :student
  validates :number, :type, presence: true

  enum phone_type: { phone: 0, cel: 1}
end
