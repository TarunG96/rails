class AddColumnPriceInBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :prce, :integer
  end
end
