class Availability < ActiveRecord::Base
  validates :date1, :date2, :date3, :date4, presence: true
  belongs_to :student
end
