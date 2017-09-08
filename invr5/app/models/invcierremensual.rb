class Invcierremensual < ActiveRecord::Base
    self.table_name = 'invcierremensual'
    self.primary_key = :["mes", "anio"]

end
