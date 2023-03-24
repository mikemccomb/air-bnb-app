class ReservationsController < ApplicationController
  # def index
  #   @reservations = current_user.reservations.where(user_id: current_user.id)
  #   render :index
  # end

  # def show
  #   @reservation = Reservation.find(params[:id])
  # end

  def total_cost
    nights = reservation.end_date - reservation.start_date
    total = nights * room.price
    return total
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(
      user_id: current_user.id,
      room_id: params[:room_id],
      start_date: params[:start_date],
      end_date: params[:end_date],
      price: params[:price],
      total: total_cost,
    )

    if @reservation.save
      render json: { message: "it works" }
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end
