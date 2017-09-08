class Mtomunic < ActiveRecord::Base
    self.table_name = 'mtomunic'
    self.primary_key = :codmunic

    belongs_to :mtodepto, :class_name => 'Mtodepto', :foreign_key => :coddepto
    has_many :invmtoproveedors, :class_name => 'Invmtoproveedor', :foreign_key => :codmunic
    belongs_to :mtodepto, :class_name => 'Mtodepto', :foreign_key => :coddepto
    has_many :invmtoproveedors, :class_name => 'Invmtoproveedor', :foreign_key => :codmunic
end
