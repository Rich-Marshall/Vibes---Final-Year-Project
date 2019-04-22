class UsersController < ApplicationController

  def index
    @shouts = Shout.where(user_id: current_user)
    @shout = Shout.new
    @users = User.all

  end



  def show
    @user = User.find(params[:id])
    @user_shouts = @user.shouts.order("created_at DESC")
    @user_events = @user.events.order("created_at DESC")
  end
end
