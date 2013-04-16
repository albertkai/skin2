class Print < ActiveRecord::Base
  attr_accessible :cat, :description, :name, :print

  validates :name, :cat, :description, :print, :presence => true

  validates_attachment :print, :presence => true,
                       :content_type => { :content_type => "image/jpeg" }

  has_attached_file :print,
                    :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
                    :url => "/system/:attachment/:id/:style/:filename"

end
