class Invmtounidadmedida < ActiveRecord::Base
    self.table_name = 'invmtounidadmedida'
    self.primary_key = :codunidadmedida

    has_many :invmtoproductos, :class_name => 'Invmtoproducto', :foreign_key => :codunidadmedida
    has_many :invmtoproductos, :class_name => 'Invmtoproducto', :foreign_key => :codunidadmedida
    
    def self.buscar(filtro)
        if (filtro)
            where("lower(nombre) LIKE ?",filtro.downcase)
        else
            all
        end
    end
    
end
