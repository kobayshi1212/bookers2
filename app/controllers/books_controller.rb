class BooksController < ApplicationController
  def index
    @book = Book.new
    @books =Book.all
  end
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path    #変更要）ユーザーページに戻る
  end

  def edit
  end

  def show
  end
  
  private
  def  book_params
    params.require(:book).permit(:title, :body)
  end
  
end