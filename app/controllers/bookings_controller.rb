class BookingsController < ApplicationController
  def index
    @bookings = Booking.all

  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @toy = Toy.find(params[:toy_id])
    @booking = Booking.new
  end

  def create
    @toy = Toy.find(params[:toy_id])
    @user = User.find(params[:user_id])
    @booking = Booking.new(booking_params)
    @booking.toy = @toy
    @booking.user = @current_user
  end
  def delete
  end

  def booking_params
    params.require(:booking).permit(:toy_id, :user_id, :start_date, :end_date)
  end
end
