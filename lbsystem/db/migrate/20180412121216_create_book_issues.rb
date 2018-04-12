class CreateBookIssues < ActiveRecord::Migration[5.1]
  def change
    create_table :book_issues do |t|
      t.date :issue_date
      t.date :return_date
      t.date :returned_date	
      t.timestamps
    end
  end
end
