class Invmrequisicion < ActiveRecord::Base
    self.table_name = 'invmrequisicion'
    self.primary_key = :["serie", "numero"]

    has_many :invdrequisicions, :class_name => 'Invdrequisicion'
    has_many :invdrequisicions, :class_name => 'Invdrequisicion'
    has_many :invdrequisicions, :class_name => 'Invdrequisicion'
    has_many :invdrequisicions, :class_name => 'Invdrequisicion'
    belongs_to :invmtomovinventario, :class_name => 'Invmtomovinventario', :foreign_key => :codmovimiento
    belongs_to :invmtomovinventario, :class_name => 'Invmtomovinventario', :foreign_key => :codmovimiento
    belongs_to :invmtomovinventario, :class_name => 'Invmtomovinventario', :foreign_key => :codmovimiento
    belongs_to :invmtomovinventario, :class_name => 'Invmtomovinventario', :foreign_key => :codmovimiento
    belongs_to :mtoevento, :class_name => 'Mtoevento', :foreign_key => :codevento
    belongs_to :mtopabellon, :class_name => 'Mtopabellon', :foreign_key => :codpabellon
    has_many :invdrequisicions, :class_name => 'Invdrequisicion'
    has_many :invdrequisicions, :class_name => 'Invdrequisicion'
    has_many :invdrequisicions, :class_name => 'Invdrequisicion'
    has_many :invdrequisicions, :class_name => 'Invdrequisicion'
    belongs_to :invmtomovinventario, :class_name => 'Invmtomovinventario', :foreign_key => :codmovimiento
    belongs_to :mtoevento, :class_name => 'Mtoevento', :foreign_key => :codevento
    belongs_to :mtopabellon, :class_name => 'Mtopabellon', :foreign_key => :codpabellon
end
