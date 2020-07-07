class UsersController < ApplicationController
  skip_before_action :login_required, only: %i[new create]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    if @user.save
      flash.now[:succes] = 'User has been successfully added'
      redirect_to @user
    else
      render :new
    end
  end

  def show
    @user = User.find_by_id([:user_id])
    @user_hours = current_user.hours.all
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
