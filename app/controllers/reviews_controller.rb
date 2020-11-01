class ReviewsController < ApplicationController
  def index
  	@book = Book.find(params[:book_id])
    @reviews = @book.reviews
  end
  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to book_reviews_path(@review.book)
    else
      @book = Book.find(params[:book_id])
      render "books/index"
    end
  end

  private
  def review_params
    params.require(:review).permit(:book_id, :score, :content)
  end
end

