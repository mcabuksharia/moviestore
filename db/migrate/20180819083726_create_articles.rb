class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :category_id
      t.string :name
      t.string :article_type
      t.string :author

      t.timestamps null: false
    end
  end
end
