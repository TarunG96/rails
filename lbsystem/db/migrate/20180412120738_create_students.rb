class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :city
      t.string :email		
      t.timestamps
    end
  end
end
