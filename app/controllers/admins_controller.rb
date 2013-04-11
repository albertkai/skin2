class AdminsController < ApplicationController

    http_basic_authenticate_with :name => "albert", :password => "111"

    def show
        @Users = User.all
    end

end