class ChatsController < ApplicationController
  def new
    @chat = Chat.find(params[:booking_id])
    @chat = Chat.new
    @user = Chat.booking.user
    @renter = Chat.toy.user
    authorize @chat
    authorize @user
    authorize @renter
  end

  def create
    @chat = Chat.find(params[:booking_id])
    @chat = Chat.new
    @user = Chat.booking.user
    @renter = Chat.toy.user

    authorize @chat
    authorize @user
    if @chat.save
      redirect_to  toy_booking_chat_path
    else
      render 'new'
    end
  end

  def show
    @chat = Chat.find(params[:booking_id])
    @user = Chat.booking.user.messages
    @renter = Chat.toy.user.messages
    authorize @chat
    authorize @user
    authorize @renter
  end


  private

  def review_params
    params.require(:chat).permit(:booking_id)
  end
end
