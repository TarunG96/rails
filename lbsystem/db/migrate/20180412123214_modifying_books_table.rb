class ModifyingBooksTable < ActiveRecord::Migration[5.1]
  def change
  	change_table :books do |t|
  	  t.remove :category
  	 end
  	 add_column :books, :category_id, :integer
  end
end
