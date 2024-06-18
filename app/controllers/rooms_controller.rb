class RoomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @rooms = Room.all
    @room = Room.first
    @messages = @room ? @room.messages.includes(:user).order(created_at: :desc) : []
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
    redirect_to rooms_path
    else
      render :new
  end
end

def destroy
  @room = Room.find(params[:id])
  @room.destroy
  redirect_to rooms_path
end

  private
  def room_params
    params.require(:room).permit(:name, :rules, :url)
  end
end
