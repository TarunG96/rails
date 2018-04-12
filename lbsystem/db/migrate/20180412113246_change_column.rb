class ChangeColumn < ActiveRecord::Migration[5.1]
  def change
    change_column :books , :category , :text  
  end
end
