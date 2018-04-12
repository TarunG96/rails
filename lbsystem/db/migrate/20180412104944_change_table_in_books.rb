class ChangeTableInBooks < ActiveRecord::Migration[5.1]
  def change
  	change_table :books do |t|
  	  t.rename :prce , :price
 	end
  end
end
