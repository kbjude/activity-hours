class UsersController < ApplicationController
  skip_before_action :login_required, only: %i[new create]
  def index
    @users = User.includes(:hours).all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    if @user.save
      flash.now[:succes] = 'User has been successfully added'
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @user = User.find_by_id([:user_id])
    @user_hours = current_user.hours.all
    @user_groups = current_user.groups.all
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
