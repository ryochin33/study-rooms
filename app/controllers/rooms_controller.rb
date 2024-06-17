class RoomsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @room = Room.new
  end
end
