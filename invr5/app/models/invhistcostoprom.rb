class Invhistcostoprom < ActiveRecord::Base
    self.table_name = 'invhistcostoprom'
    self.primary_key = :["mes", "anio", "codproducto"]

end
