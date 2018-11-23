class MessagesController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @message = Message.new(message_params)
    @message.user = current_user
    @message.booking = @booking
    authorize @message
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @toy = Toy.find(@booking[:toy_id])
    @message = Message.new(message_params)
    @message.user = current_user
    @message.booking = @booking
    authorize @message
    if @message.save
      respond_to do |format|
        format.html { redirect_to toy_booking_path(@toy, @booking) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'bookings/show' }
        format.js  # <-- idem
      end
    end
  end

  private

  def message_params
    params.require(:message).permit(:user_id, :content)
  end
end
