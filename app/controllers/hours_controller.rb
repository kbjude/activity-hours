class HoursController < ApplicationController
  def index
    @hours = Hours.all
  end

  def new
    @hour = Hour.new
  end

  def create
    @hour = Hour.new(hour_params)
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
  end

  private

  def hour_params
    params.require(:hour).permit(:hours, :description, :user_id)
  end
end
