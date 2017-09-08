class Mtopai < ActiveRecord::Base

    self.primary_key = :codpais

    has_many :mtodeptos, :class_name => 'Mtodepto', :foreign_key => :codpais
    has_many :mtodeptos, :class_name => 'Mtodepto', :foreign_key => :codpais
end
