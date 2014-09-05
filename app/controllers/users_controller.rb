class UsersController < ApplicationController

  def new
    @user = User.new
    respond_to do |format|
      format.html
    end
  end

  def create
    @user = User.new(params[:user])
    respond_to do |format|
      if @user.save
        format.html { redirect_to "/" , notice: 'User successfully created.'}
      else
        format.html { render action: "new" }
      end
    end
  end
end
