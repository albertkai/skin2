class Print < ActiveRecord::Base
  attr_accessible :cat, :description, :name

  validates :name, :cat, :description, :presence => true
end
