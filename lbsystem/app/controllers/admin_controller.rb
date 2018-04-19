class AdminController < ApplicationController
  def index
  end
  
  def show
    @book_list = BookIssue.all
  end

  def home

  end

  def forgot

  end

end
