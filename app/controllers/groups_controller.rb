class GroupsController < ApplicationController
  def index
    @groups = Group.includes(:hours).all
    @group = Group.includes(:hours).find_by_id(params[:id])
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
    @groups = Group.includes(:hours).all.order(:name)
    @group = Group.includes(:hours).find_by_id(params[:id])
    @hours = Hour.includes(:groups).all
    @grouphours = @group.hours
    @user = User.includes(:groups).find_by_id(params[:id])
    @grouphourscount = @group.hours.grouptotalhours(@group)
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon, :user_id, uploads: [])
  end
end
