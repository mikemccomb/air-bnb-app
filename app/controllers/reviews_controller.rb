class ReviewsController < ApplicationController

    def new
        @review = Review.new
        render :new
    end

    def create
        @review = Review.create(
          reservation_id: params[:reservations][:reservations_id],
          rating: params[:rating],
          comment: params[:comment]
        )
        render :show
    end

end
