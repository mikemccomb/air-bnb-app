class RoomsController < ApplicationController
  def index
    @rooms = Room.all
    render :index
  end

  def show
    @room = Room.find(params[:id])
    render :show
  end
end
