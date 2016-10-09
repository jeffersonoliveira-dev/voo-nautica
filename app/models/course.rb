class Course < ActiveRecord::Base
  validates :name, :value, presence: true
  belongs_to :student
  enum course_type: { arrais_motonauta: 0, amador: 1, motonauta: 2}

end
