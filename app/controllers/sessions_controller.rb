class SessionsController < ApplicationController
  skip_before_action :login_required, only: %i[new create]
  def new
    @user = User.new
  end

  def create
    @user = User.find_by_name(params[:name])
    if @user
      session[:user_id] = @user.id
      redirect_to root_path
    elsif flash[:alert] = 'Invalid name or username'
      @user = User.new(params)
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_user_path
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  private

  def login(_user)
    session[:user_id] = nil
  end
end
