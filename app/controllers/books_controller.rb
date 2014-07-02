class BooksController < ApplicationController
  def new
  end

  def index
    @book = Book.all
  end

  def show
    @book = Book.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @book }
    end
  end

  def create
    @book = Book.new(params[:book].permit(:title, :author))

    @book.save
    redirect_to @book
  end

end
