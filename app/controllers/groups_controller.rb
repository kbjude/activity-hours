class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
    @group = current_user.groups.build
  end

  def create
    @group = current_user.groups.build(group_params)
    @group.save
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
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon, :user_id)
  end
end
