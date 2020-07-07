class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(params)
    end

    def show
        @user = User.find_by_id([:user_id])
    end

    # def destroy
    # end

    # def update
    # end

    private
    def user_params
        params.require(:user).permit(:name)
    end

end
