class AddColumnToAdmin < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :username, :string
    add_column :admins, :email, :string

  end
end
