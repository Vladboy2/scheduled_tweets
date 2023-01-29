class MainController < ApplicationController
    def index
        #feature/method inherited from ApplicationController to notify the user what happened as a result of their actions 
        # flash[:notice] = "Logged in successfully" #use it like a flash
        # flash[:alert] = "Invalid email or password"
        if session[:user_id]
            @user = User.find_by(id: session[:user_id]) # find_by will not throw an error when it cant find a user
        end
    end
end