class RegistrationsController < ApplicationController
    def new
        #instance variable using @ makes it visible in views
        @user = User.new
    end

    def create
        
        @user = User.new(user_params) # user_params is a helper method that is private and makes it more secure

        if @user.save
            #set cookie to keep track of the user signed in
            #cookies[:user_id] <--code

            #Two types of cookies: session and signed
            #session is an encrypted store
            session[:user_id] = @user.id
            
            redirect_to root_path, notice: "Successfully created account"
        else
            render :new
        end 

        #params # => {"authenticity_token"=>"[FILTERED]", "user"=>{"email"=>"vlad02boyko@gmail.com", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}, "commit"=>"Sign Up"}

        #params[:user] # => {"email"=>"vlad02boyko@gmail.com", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}, "commit"=>"Sign Up"}
        
        #render plain: params[:user]
    end
    
    private 

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end

end