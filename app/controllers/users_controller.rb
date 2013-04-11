class UsersController < ApplicationController

    respond_to :json

    def show
        @Users = User.all
    end

end