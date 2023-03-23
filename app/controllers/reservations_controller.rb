class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new()
  end

  def create
    @reservation = Reservation.new(
      user_id: current_user.id,
      room_id: @room.id,
      start_date: params[:start_date],
      end_date: params[:end_date],
      price: params[:price],
      total: params[:total],
    )

    if @reservation.save
      redirect_to @room
    else
      render :new, status: :unprocessable_entity
    end
  end
end
