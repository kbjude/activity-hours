class HoursController < ApplicationController
  before_action :login_required, only: %i[new create]

  def index
    @hours = current_user.hours.all.order(created_at: :desc)
  end

  def new
    @hour = Hour.new
  end

  def create
    @hour = current_user.hours.build(hour_params)
    @hour.save
    if @hour.save
      flash.now[:succes] = 'Hour successful created'
      redirect_to hour_path(@hour)
    else
      render :new
    end
  end

  def show
    @hours = current_user.hours.all.order(created_at: :desc)
    @hour = Hour.find_by_id(params[:id])
    @users = User.all
    @user = User.find_by_id(params[:id])
    @groups = Group.all
    @count = Hour.totalhours(current_user)
  end

  def externalhours
    @externalhours = []
    current_user.hours.each do |hour|
      @externalhours.push hour if hour.groups.count.zero?
    end
    @sorted = @externalhours.sort_by(&:created_at)
  end

  private

  def hour_params
    params.require(:hour).permit(:hours, :description, :user_id, :group_id, group_ids: [], uploads: [])
  end
end
