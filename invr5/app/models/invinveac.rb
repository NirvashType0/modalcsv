class Invinveac < ActiveRecord::Base
    self.table_name = 'invinveac'


    belongs_to :invmtobodega, :class_name => 'Invmtobodega', :foreign_key => :codbodega
    belongs_to :invmtomovinventario, :class_name => 'Invmtomovinventario', :foreign_key => :codmovimiento
    belongs_to :invmtomovinventario, :class_name => 'Invmtomovinventario', :foreign_key => :codmovimiento
    belongs_to :invmtomovinventario, :class_name => 'Invmtomovinventario', :foreign_key => :codmovimiento
    belongs_to :invmtomovinventario, :class_name => 'Invmtomovinventario', :foreign_key => :codmovimiento
    belongs_to :invmtoproducto, :class_name => 'Invmtoproducto', :foreign_key => :codproducto
    belongs_to :invmtoproveedor, :class_name => 'Invmtoproveedor', :foreign_key => :codproveedor
    belongs_to :invmtobodega, :class_name => 'Invmtobodega', :foreign_key => :codbodega
    belongs_to :invmtomovinventario, :class_name => 'Invmtomovinventario', :foreign_key => :codmovimiento
    belongs_to :invmtoproducto, :class_name => 'Invmtoproducto', :foreign_key => :codproducto
    belongs_to :invmtoproveedor, :class_name => 'Invmtoproveedor', :foreign_key => :codproveedor
end
