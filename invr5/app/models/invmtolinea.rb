class Invmtolinea < ActiveRecord::Base
    self.table_name = 'invmtolinea'
    self.primary_key = :codlinea
    validates :nombre, presence: true
    before_save :setfeacceso
    before_save :setnis

    has_many :invmtogrupos, :class_name => 'Invmtogrupo', :foreign_key => :codlinea
    
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
