class AddingColumnsInBookIssues < ActiveRecord::Migration[5.1]
  def change
  	add_column :book_issues , :student_id , :integer
  	add_column :book_issues , :book_id , :integer
  end
end
