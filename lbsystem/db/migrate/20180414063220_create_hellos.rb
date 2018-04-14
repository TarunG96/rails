class CreateHellos < ActiveRecord::Migration[5.1]
  def change
    create_table :hellos do |t|
      t.string :name
     t.string :city

      t.timestamps
    end
  end
end
