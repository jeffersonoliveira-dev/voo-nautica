class Course < ActiveRecord::Base
  validates :name, :value, presence: true
  belongs_to :student
end
