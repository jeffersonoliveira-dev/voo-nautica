class Address < ActiveRecord::Base
  validates :street, :district, :city, :cep, presence: true
  belongs_to :student
end
