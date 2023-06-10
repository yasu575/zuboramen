class RemoveToppingFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :topping, :string
  end
end
