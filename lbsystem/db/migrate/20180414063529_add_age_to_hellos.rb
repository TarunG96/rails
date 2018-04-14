class AddAgeToHellos < ActiveRecord::Migration[5.1]
  def change
  	add_column :hellos, :age, :integer
  	remove_column :hellos, :city
  	change_column :hellos, :name, :text
  	add_reference :hellos, :books
  end
end
