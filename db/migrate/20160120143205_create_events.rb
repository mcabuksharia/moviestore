class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.datetime :starts_at

      t.timestamps null: false
    end
  end
end
