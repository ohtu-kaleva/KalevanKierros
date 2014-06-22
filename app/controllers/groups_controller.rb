class GroupsController < ApplicationController
  before_action :set_group_or_redirect, only: [:show]
  def new
    @group = Group.new
    @users = User.all
  end

  def create
    @group = Group.new(group_params)

    respond_to do |format|
      if @group.save
        format.html { redirect_to :root, notice: 'Ryhmä luotu onnistuneesti.' }
      else
        format.html { render :new }
      end
    end
  end

  def show
    @users = @group.users
  end

  def update
  end

  private

  def set_group_or_redirect
    @group = Group.find_by id: params[:id]
    return if @group
    redirect_to :root
  end

  def group_params
    params.require(:group).permit(:name)
  end

end