class GroupsController < ApplicationController
 
  def index
    @groups = Group.all
    
    respond_to do |format|
      format.html
    end
  end

  def new
    @group = Group.new
    respond_to do |format|
      format.html
    end
  end

  def create
    @group = Group.new(params[:group])
    respond_to do |format|
      if @group.save
        format.html { redirect_to "/" , notice: 'Group successfully created.'}
      else
        format.html { render action: "new" }
      end
    end
  end

  def show
    @group = Group.find(params[:id])
    respond_to do |format|
      format.html
    end
  end
end
