class CreateViehcles < ActiveRecord::Migration
  def change
    create_table :viehcles do |t|
      t.string :name
      t.string :type
      t.string :description
      t.string :color

      t.timestamps null: false
    end
  end
end
