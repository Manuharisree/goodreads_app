class ReviewsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]

  def index
  end

  def create
  	@review=current_user.reviews.build(params[:review])
  	if @review.save
  		flash[:success]="Review is created"
      #@book=Book.find_by_title(params[:review][:title])
  		redirect_to current_user
  	else
  		render 'static_pages/home'
  	end
  end

  def destroy
  end
end