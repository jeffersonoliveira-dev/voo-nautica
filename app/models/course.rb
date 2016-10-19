class Course < ActiveRecord::Base
  validates :name, :price, :course_type, presence: true
  belongs_to :student
  enum course_type: { arrais_amador_e_motonauta: 0, arrais_amador: 1,
     motonauta: 2 }
end
