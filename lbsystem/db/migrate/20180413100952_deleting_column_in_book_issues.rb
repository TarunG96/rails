class DeletingColumnInBookIssues < ActiveRecord::Migration[5.1]
  def change
  	remove_column :book_issues , :returned_date

  end
end
