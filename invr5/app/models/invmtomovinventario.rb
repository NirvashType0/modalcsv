class Invmtomovinventario < ActiveRecord::Base
    self.table_name = 'invmtomovinventario'
    self.primary_key = :codmovimiento
    before_save :setfeacceso
    before_save :setnis

    has_many :invinveacs, :class_name => 'Invinveac', :foreign_key => :codmovimiento
    has_many :invmrequisicions, :class_name => 'Invmrequisicion', :foreign_key => :codmovimiento
    
    def self.buscar(filtro)
        if (filtro)
            where("lower(nombre) LIKE ? OR lower(codmovimiento) LIKE ?",filtro.downcase, filtro.downcase)
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
    
    def settipo(ptipo)
        if ptipo == "I"
            self.tipo = "I"
        end
        if ptipo == "E"
            self.tipo = "E"
        end
    end
    def estado
        if self.activo == 1
          "glyphicon glyphicon-ok text-success"
        else
          "glyphicon glyphicon-minus text-danger"
        end
    end
end
