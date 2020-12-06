class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @book = Book.find(params[:book_id])
    @user = User.find_by_id(@book.user_id)
    @books = current_user.books.listed
  end

  def show
    @user = User.find_by_id(params[:id])
    @users = User.all
    @books = Book.where('user_id': params[:id])      
   # @books = @user.book
  end

  def require_permission
    if !current_user
      redirect_to root_path
    end
  end
end
