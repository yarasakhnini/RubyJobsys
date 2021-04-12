class JobSessionsController < ApplicationController


    def create 
        user = User.find_by(email:login_params[:email])
        if user.save
            job_session[:user_id]=user.id
            redirect_to '/dashboard'
        else
            flash[:login_errors]=['invalid']
            redirect_to '/'
        end
    end

    private
        def login_params
            params.reqire(:login).permit( :email, :password,  )
end

end
