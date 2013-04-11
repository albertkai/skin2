class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    @Users = User.all
    #gon.rabl "app/views/users/show.rabl", as: "Users"
  end

end
