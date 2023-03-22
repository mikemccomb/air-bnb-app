class RoomsController < ApplicationController
  def index
    @rooms = Room.all
    render :index
  end

  def show
  end
end
