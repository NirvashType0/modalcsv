class Mtopabellon < ActiveRecord::Base
    self.table_name = 'mtopabellon'
    self.primary_key = :codpabellon

    has_many :invmrequisicions, :class_name => 'Invmrequisicion', :foreign_key => :codpabellon
    has_many :invmrequisicions, :class_name => 'Invmrequisicion', :foreign_key => :codpabellon
end
