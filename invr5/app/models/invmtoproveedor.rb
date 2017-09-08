class Invmtoproveedor < ActiveRecord::Base
    self.table_name = 'invmtoproveedor'
    self.primary_key = :codproveedor

    has_many :invinveacs, :class_name => 'Invinveac', :foreign_key => :codproveedor
    belongs_to :mtomunic, :class_name => 'Mtomunic', :foreign_key => :codmunic
    has_many :invinveacs, :class_name => 'Invinveac', :foreign_key => :codproveedor
    belongs_to :mtomunic, :class_name => 'Mtomunic', :foreign_key => :codmunic
end
