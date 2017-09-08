class Mtoevento < ActiveRecord::Base
    self.table_name = 'mtoevento'
    self.primary_key = :codevento

    has_many :invmrequisicions, :class_name => 'Invmrequisicion', :foreign_key => :codevento
    has_many :invmrequisicions, :class_name => 'Invmrequisicion', :foreign_key => :codevento
end
