class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking).where(user: current_user).order(created_at: :desc)
    authorize @bookings
    @rentals = policy_scope(Booking).select { |booking| booking.toy.user == current_user }
    @mytoys = policy_scope(Toy).select { |toy| toy.user == current_user }
    @review = Review.new
  end

  def show
    @toy = Toy.find(params[:toy_id])
    @booking = Booking.find(params[:id])
    @message = Message.new
    authorize @booking
  end

  def new
    @toy = Toy.find(params[:toy_id])
    @booking = Booking.new
    @booking.toy = @toy
    @booking.user = current_user
    authorize @booking
  end

  def create
    @toy = Toy.find(params[:toy_id])
    @booking = Booking.new(booking_params)
    @booking.toy = @toy
    @booking.user = current_user
    authorize @booking
    if @booking.check_date
      if @booking.save
        redirect_to bookings_path
      else
        render 'new'
      end
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    authorize @booking
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:toy_id, :user_id, :start_date, :end_date)
  end
end
