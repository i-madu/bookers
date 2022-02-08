class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def create
    @book = Book.new(params[:id])

    if @book.save
      redirect_to show_path(@book.id)
    else
      render :new
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    if book.update(book_params)
      redirect_to show_path(book.id)
    else
      render :edit
    end
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to index
  end

  private
  def book_params
    params.require.permit(:title,:body)
  end

end
