class BooksController < ApplicationController
  def new
  end

  def index
  end

  def show
    @book = Book.new(book_params)
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
