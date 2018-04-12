class AddingForeignKey < ActiveRecord::Migration[5.1]
  def change
    add_column :students , :department_id , :integer
    add_foreign_key :books , :categories
    add_foreign_key :students , :departments 
  end
end
