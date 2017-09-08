class Invmtoproducto < ActiveRecord::Base
    self.table_name = 'invmtoproducto'
    self.primary_key = :codproducto
    validates :descripcion, presence: true
    before_save :setfeacceso
    before_save :setnis

    belongs_to :invmtogrupo, :class_name => 'Invmtogrupo', :foreign_key => :codgrupo
    has_many :invinveacs, :class_name => 'Invinveac', :foreign_key => :codproducto
    belongs_to :invmtounidadmedida, :class_name => 'Invmtounidadmedida', :foreign_key => :codunidadmedida
    
    def self.buscar(filtro)
        if (filtro)
            where("lower(descripcion) LIKE ?", filtro.downcase)
        else
            all
        end
    end
    
    def setfeacceso
        self.fecreacion = DateTime.current
    end
    
    def setnis
        self.niscreo = "UsuarioActual"
        self.nisactualizo = "UsuarioActual"
    end
    
    def setexgr(exgr)
        if exgr == "E"
            self.exgr = "E"
        end
        if exgr == "G"
            self.exgr = "G"
        end
    end
    def estado
        if self.activo == 1
          "glyphicon glyphicon-ok text-success"
        else
          "glyphicon glyphicon-remove text-danger"
        end
    end
end
