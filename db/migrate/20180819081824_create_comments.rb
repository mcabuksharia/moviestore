class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :article_id
      t.string :name
      t.string :description
      t.string :posted_by

      t.timestamps null: false
    end
  end
end
