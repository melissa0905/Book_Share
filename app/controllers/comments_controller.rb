class CommentsController < ApplicationController
  before_action :authenticate_user!


  
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])

  end


  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
    @comment.show = true
    @comment.save
    redirect_to book_path(Book.find(@comment.book_id))
  end

  # POST /comments
  # POST /comments.json
  def create
    @book = Book.find(params[:book_id])
    @comment = @book.comments.new(comment_params)
    @comment.user_id = current_user.id
    @comment.show = false
    @comment.save
    respond_to do |format|
      format.js
    end  
  end

  def new
    @comment = Comment.new
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:title, :content, :accept, :book_id, :user_id)
    end
  end
