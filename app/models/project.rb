class Project < ActiveRecord::Base
  attr_accessible :details, :name, :title

  validates :name,    :presence => true
  validates :title,   :presence => true

  has_many :tasks, :dependent => :destroy
end
