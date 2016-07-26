class Book < ActiveRecord::Base
  attr_accessible :title, :author, :content

  validates :author, presence: true, length: {maximum:50}
  validates :content, presence:true, length: {maximum:200}
  validates :title, presence:true, length: {maximum:50}

  default_scope order: 'books.created_at DESC'
end
