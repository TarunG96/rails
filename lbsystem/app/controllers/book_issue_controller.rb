class BookIssueController < ApplicationController
  def index
    @book_issues = BookIssue.all
  end

  def show
    @book_issue = BookIssue.find(params[:id])
  end

  def new
    @book_issue = BookIssue.new
  end

  def create
    @book_issue = BookIssue.new(issue_date: params[:book_issue][:issue_date], return_date: params[:book_issue][:return_date], student_id: params[:book_issue][:student_id], book_id: params[:book_issue][:book_id])      
    @book_issue.save
    if @book_issue.save
      redirect_to :action => 'index'
    else
      render :new
    end
  end

  def edit
    @book_issue = BookIssue.find(params[:id])
  end

  def update
    @book_issue = BookIssue.find(params[:id])
    if @book_issue.update(issue_date: params[:book_issue][:issue_date], return_date: params[:book_issue][:return_date], student_id: params[:book_issue][:student_id], book_id: params[:book_issue][:book_id])
      redirect_to :action => 'index'
    end
  end
  
  def destroy   
    @book_issue = BookIssue.find(params[:id])   
    if @book_issue.delete   
      redirect_to :action => 'index'   
    else   
      render :destroy   
    end   
  end   

end
