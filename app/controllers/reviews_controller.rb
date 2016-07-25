class ReviewsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]

  def index
  end

  def create
  	@review=current_user.reviews.build(params[:review])
  	if @review.save
  		flash[:success]="Review is created"
  		redirect_to root_url
  	else
  		render 'static_pages/home'
  	end
  end

  def destroy
  end
end