class Phone < ActiveRecord::Base
  belongs_to :student
  validates :number, :type, presence: true
end
