class DashboardController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @books = current_user.books
    @not_show_comments = Comment.where(book_id: @books.each {|book| book.id}, show: false)
    @comments = Comment.where(book_id: @books.each {|book| book.id})

    @my_wish_list = Trade.where('user_id': current_user.id)
    @trades = Trade.all
  end

end