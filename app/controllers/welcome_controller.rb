class WelcomeController < ApplicationController
  def index
  
    @books = Book.all.where(share: true)
  end
  
end
