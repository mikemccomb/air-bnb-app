class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    render :index
  end

  def new
    @review = Review.new
    render template: "reviews/new"
  end

  def create
    @review = Review.new(
      reservation_id: params[:reservation_id],
      rating: params[:rating],
      comment: params[:comment],
    )
    if @review.save
      redirect_to "/rooms"
    else
      render :new, status: :unprocessable_entity
    end
  end
end
