class Invmtobodega < ActiveRecord::Base
    self.table_name = 'invmtobodega'
    self.primary_key = :codbodega
    before_save :setfeacceso
    before_save :setnis
    
    has_many :invinveacs, :class_name => 'Invinveac', :foreign_key => :codbodega
    has_many :invinveacs, :class_name => 'Invinveac', :foreign_key => :codbodega
    
    def self.buscar(filtro)
        if (filtro)
            where("lower(nombre) LIKE ?",filtro.downcase)
        else
            all
        end
    end
    
    def setfeacceso
        self.feacceso = DateTime.current
    end
    
    def setnis
        self.nis = "UsuarioActual"
    end
end
