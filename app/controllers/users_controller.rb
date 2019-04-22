class UsersController < ApplicationController

  def index
    @shouts = Shout.where(user_id: current_user)
    @shout = Shout.new
    @users = User.all

  end



  def show
    @user = User.find(params[:id])
    @user_shouts = @user.shouts
    @user_events = @user.events
    @user_events = Event.all.order("created_at DESC")
    @user_shouts = Shout.all.order("created_at DESC")
  end
end
