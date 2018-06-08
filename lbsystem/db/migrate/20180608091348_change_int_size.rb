class ChangeIntSize < ActiveRecord::Migration[5.1]
  def change
    change_column :students, :phone_no, :integer, :limit => 8
  end
end
