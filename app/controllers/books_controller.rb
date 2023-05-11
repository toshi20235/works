class BooksController < ApplicationController
  def new
  end
  def create
  book = Book.new(book_params)
  book.save
  redirect_to '/books/[:id]'
  end
  def index
    @books = Book.all
    @book = Book.new
  end

  def show
  end

  def edit
  end
   private
  
  def list_params
    params.require(:list).permit(:title, :body)
  end

end
