# db/migrate/20220614123456_add_category_id_to_posts.rb
class AddCategoryIdToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :category_id, :integer
    add_index :posts, :category_id
    add_foreign_key :posts, :categories
  end
end
