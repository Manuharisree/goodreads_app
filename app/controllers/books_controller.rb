class BooksController < ApplicationController

 before_filter :is_admin, only:[:destroy]
 before_filter :signed_in_user, only: [:new, :create, :destroy, :index]

  def show
    @book=Book.find_by_id(params[:id])
  end
  
  def new
  	@book=Book.new
  end

  def create
  	@book=Book.new(params[:book])
  	if @book.save
  		flash[:success]="Your book is successfully added"
  		redirect_to new_book_path
  	else
  		flash.now[:error]="Invalid input"
  		render "new"
  	end
  end

  def destroy
  	User.find_by_id(params[:id]).destroy
  	flash[:success]="Book is removed"
  	redirect_to 
  end

  def index
  	@books = Book.paginate(page: params[:page])
  end

  private

  def is_admin
  	if !current_user.admin?
  		flash[:error]="Only Admin can delete a book"
  		redirect_to root_url
    end
  end
end
