class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @toy = Toy.find(params[:toy_id])
    @booking = Booking.new
    @booking.toy = @toy
    @booking.user = current_user
  end

  def create
    @toy = Toy.find(params[:toy_id])
    @booking = Booking.new(booking_params)
    @booking.toy = @toy
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render 'new'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:toy_id, :user_id, :start_date, :end_date)
  end
end
