class RegistrationsController < ApplicationController
    def new
        #instance variable using @ makes it visible in views
        @user = User.new
    end

    def create
        render plain: params[:users]
    end
    
end