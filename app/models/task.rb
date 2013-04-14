class Task < ActiveRecord::Base
  belongs_to :project
  attr_accessible :details, :enddate, :label, :name, :priority, :startdate
end
