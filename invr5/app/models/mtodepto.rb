class Mtodepto < ActiveRecord::Base
    self.table_name = 'mtodepto'
    self.primary_key = :coddepto

    has_many :mtomunics, :class_name => 'Mtomunic', :foreign_key => :coddepto
    belongs_to :mtopai, :class_name => 'Mtopai', :foreign_key => :codpais
    has_many :mtomunics, :class_name => 'Mtomunic', :foreign_key => :coddepto
    belongs_to :mtopai, :class_name => 'Mtopai', :foreign_key => :codpais
end
