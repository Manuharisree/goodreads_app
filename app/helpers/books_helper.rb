module BooksHelper
	def get_book review
  	@book=Book.find_by_title(review.title)
    end
end
