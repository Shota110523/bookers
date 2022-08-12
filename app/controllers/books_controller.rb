class BooksController < ApplicationController
  protect_from_forgery

  def index
    @books = Book.all
  end

  def create
    book = Book.index(book_params)
    book.save
    redirect_to '/books'
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
