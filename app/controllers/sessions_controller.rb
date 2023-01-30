class SessionsController < ApplicationController
    
    def new

    end

    def create
        user = User.find_by(email: params[:email]) # find_by method takes in hash param

        if user.present? && user.authenticate(params[:password]) # look up the user and valid password. authenticate takes in string param
            session[:user_id] = user.id
            redirect_to root_path, notice: "Logged in successfully"
        else
            flash[:alert] = "Invalid email or password"
            render :new
        end

    end
    
    def destory
        session[:user_id]= nil
        redirect_to root_path, notice: "logged out"
    end
end