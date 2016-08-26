class Referrer < ActiveRecord::Base
  validates :type, presence: true
  belongs_to :student
  enum :type [:ex_student, :friend, :family, :olx, :facebook, :marketing, :cfb,
              :other]
end
