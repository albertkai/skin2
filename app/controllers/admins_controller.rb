class AdminsController < ApplicationController

    http_basic_authenticate_with :name => "albert", :password => "56114144as"

    def show
        @Users = User.all
    end

end