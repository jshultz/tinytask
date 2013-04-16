class Project < ActiveRecord::Base
  attr_accessible :details, :name, :title, :tags_attributes

  validates :name,    :presence => true
  validates :title,   :presence => true

  has_many :tasks, :dependent => :destroy
  has_many :tags

  accepts_nested_attributes_for :tags, :allow_destroy => :true,
                                :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank?}}
end

