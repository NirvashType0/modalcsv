class Invmtogrupo < ActiveRecord::Base
    self.table_name = 'invmtogrupo'
    self.primary_key = :codgrupo

    has_many :invmtoproductos, :class_name => 'Invmtoproducto', :foreign_key => :codgrupo
    belongs_to :invmtolinea, :class_name => 'Invmtolinea', :foreign_key => :codlinea
    has_many :invmtoproductos, :class_name => 'Invmtoproducto', :foreign_key => :codgrupo
    belongs_to :invmtolinea, :class_name => 'Invmtolinea', :foreign_key => :codlinea
end
