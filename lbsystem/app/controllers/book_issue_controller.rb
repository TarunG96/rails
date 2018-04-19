class BookIssueController < ApplicationController
  
  def index
    @book_list = BookIssue.all
  end
  
  def new
    @book_issue = BookIssue.new
  end

end
