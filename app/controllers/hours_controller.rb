class HoursController < ApplicationController
  before_action :login_required, only: %i[new create]
  
  def index
    @hours = Hours.all.order(created_at: :desc)
  end

  def new
    @hour = Hour.new
  end

  def create
    @hour = current_user.hours.build(hour_params)
    @hour.save
    if @hour.save
      flash.now[:succes] = 'Hour successful created'
      redirect_to @hour
    else
      render :new
    end
  end

  def show
    @hour = Hour.find_by_id([:hour_id])
    @users = User.all
    @groups = Group.all
  end

  private

  def hour_params
    params.require(:hour).permit(:hours, :description, :user_id)
  end
end
