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
    @user = User.find_by_id([:hour_id])
    @groups = Group.all
    @count = Hour.totalhours(@user)
  end

  def externalhours
    @hours = []
    current_user.hours.each do |hour|
      @hours.push hour if hour.groups.count.zero?
    end
  end

  private

  def hour_params
    params.require(:hour).permit(:hours, :description, :user_id)
  end
end