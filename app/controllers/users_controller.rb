class UsersController < ApplicationController

  def index
    @shouts = Shout.where(user_id: current_user)
    @shout = Shout.new
  end


  def show
    @user = User.find(params[:id])
    @user_shouts = @user.shouts
    @user_events = @user.events
  end
end
