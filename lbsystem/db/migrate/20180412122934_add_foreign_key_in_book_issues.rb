class AddForeignKeyInBookIssues < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :book_issues , :books
    add_foreign_key :book_issues , :students
  end
end
