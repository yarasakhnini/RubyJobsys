class UsersController < ApplicationController
    def index

    end

    def create 
        user = User.new(user_params)
        if user.save
            job_session[:user_id]=user.id
            redirect_to '/dashboard'
        else
            flash[:register_errors]=user.errors.full_messages
        end
    end

    private
        def user_params
            params.reqire(:user).permit(:email, :password,  )
end
