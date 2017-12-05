class AlumnoActividad < ApplicationRecord
  belongs_to :alumno
  belongs_to :actividadinstructor
end
