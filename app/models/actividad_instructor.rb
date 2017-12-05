class ActividadInstructor < ApplicationRecord
  belongs_to :actividadExtra
  belongs_to :instructor
end
