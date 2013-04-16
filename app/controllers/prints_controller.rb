class PrintsController < ApplicationController

    respond_to :json

    def show
        @Prints = Print.all
    end

    def create
        @new_print = Print.create :name => params[:name], :description => params[:desc], :cat => params[:cat], :print => params[:print]
        PrintsMailer.save_email.deliver
        if @new_print.save

            render :json => {'status' => 'true', 'data' => @new_print}

        else
            render :json => {'status' => 'false', 'errors' => @new_print.errors}
        end
    end

    def update
        @target = Print.find(params[:id])
        @target.update_attributes(:name => params[:name], :description => params[:desc], :cat => params[:cat])
        if @target.save
           render :json => {'status' => 'true', 'data' => @target}
        else
           render :json => {'status' => 'false', 'errors' => @target.errors}
        end
    end

    def getone
        @target = Print.find(params[:id])
    end

    def cat
      @target = Print.where(:cat => params[:cat])
    end

    def destroy
        @target = Print.find(params[:id])
        @target.destroy
        if @target.nil?
          render :json => {'status' => 'false'}
        else
          render :json => {'status' => 'true'}
        end

    end

end