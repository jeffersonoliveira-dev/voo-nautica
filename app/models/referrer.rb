class Referrer < ActiveRecord::Base
  validates :type, presence: true
  belongs_to :student
  enum referral_type: { ex_student: 0, friend: 1, family: 2, olx: 3,
     facebook: 4, marketing: 5, cfb: 6, other: 7 }
end
