class ReviewsController < ApplicationController
  def new
    @toy = Toy.find(params[:toy_id])
    @review = Review.new
    @review.toy = @toy
    authorize @review
  end

  def create
    @toy = Toy.find(params[:toy_id])
    @review = Review.new(review_params)
    @review.toy = @toy
    authorize @review
    if @review.save
      redirect_to toy_path(@toy)
    else
      render 'new'
    end
  end

  private

  def review_params
    params.require(:review).permit(:toy_id, :content, :rating)
  end
end
