class Invdrequisicion < ActiveRecord::Base
    self.table_name = 'invdrequisicion'


    belongs_to :invmrequisicion, :class_name => 'Invmrequisicion', :foreign_key => :numero
    belongs_to :invmrequisicion, :class_name => 'Invmrequisicion', :foreign_key => :serie
    belongs_to :invmrequisicion, :class_name => 'Invmrequisicion', :foreign_key => :numero
    belongs_to :invmrequisicion, :class_name => 'Invmrequisicion', :foreign_key => :serie
    belongs_to :invmrequisicion, :class_name => 'Invmrequisicion', :foreign_key => :numero
    belongs_to :invmrequisicion, :class_name => 'Invmrequisicion', :foreign_key => :serie
    belongs_to :invmrequisicion, :class_name => 'Invmrequisicion', :foreign_key => :numero
    belongs_to :invmrequisicion, :class_name => 'Invmrequisicion', :foreign_key => :serie
end
