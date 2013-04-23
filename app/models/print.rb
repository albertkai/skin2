class Print < ActiveRecord::Base


  attr_accessible :cat, :description, :name, :print

  validates :name, :cat, :description, :print, :presence => true

  validates_attachment :print, :presence => true,
                       :content_type => { :content_type => "image/jpeg" }

  has_attached_file :print,
                    :styles => { :medium => "500x700>", :thumb => "100x130#" },
                    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
                    :url => "/system/:attachment/:id/:style/:filename"


  def self.filter_by_params(params)
    scoped = self.scoped
    scoped = scoped.where(:cat => params[:cat]) unless params[:cat] === 'All'
    scoped = scoped.where(:primary_color => params[:primary_color]) unless params[:primary_color] === 'All'
    scoped
  end

end
