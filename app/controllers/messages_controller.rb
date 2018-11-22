class MessagesController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @message = Message.new(message_params)
    @message.user = current_user
    authorize @message
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @message = Message.new(message_params)
    @message.user = current_user
    @message.save!
    authorize @message
  end

  private

  def message_params
    params.require(:message).permit(:user_id, :content)
  end
end
