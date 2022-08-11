class BooksController < ApplicationController
  def new
    @books = Book.new
  end

def create
    list = List.new(list_params)
    list.save
    redirect_to '/top'
  end

  def index
    @books = Book.all
  end

  def show
  end

  def edit
  end
end
