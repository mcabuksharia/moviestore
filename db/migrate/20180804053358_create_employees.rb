class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :emp_name
      t.string :designation
      t.float :salary
      t.string :address

      t.timestamps null: false
    end
  end
end
