class SessionsController < ApplicationController
    skip_before_action :login_required, only: %i[new create]
    def new
        @user = User.new
    end

    def create
        if @user = User.find_by_name(params[:name])
            session[:user_id] = @user.user_id
            redirect_to root_path
        elsif flash[:alert] = 'Invalid name'
            @user = User.new(params)
            redirect_to root_path
        else
            render 'new'
        end
    end

    def destroy
        session[user_id] = nill
        redirect_to root_path
    end

    def show
        
    end
end
