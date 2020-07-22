class GroupsController < ApplicationController
  def index
    @groups = Group.all
    @group = Group.find_by_id(params[:id])
  end

  def new
    @group = current_user.groups.build
  end

  def create
    @group = current_user.groups.build(group_params)
    Rails.logger.info group_params
    if @group.save
      flash.now[:succes] = 'Group successful created'
      redirect_to @group
    else
      render :new
    end
  end

  def show
    @group = Group.find_by_id(params[:id])
    @hours = Hour.all
    @grouphours = @group.hours
    @user = User.find_by_id(params[:id])
    @groups = Group.all.order(:name)
    @grouphourscount = @group.hours.totalhours(current_user)

  end

  private

  def group_params
    params.require(:group).permit(:name, :icon, :user_id, uploads: [])
  end
end
