class ChangeCloumnsNotnullAddPosts < ActiveRecord::Migration[7.0]
  def change
    change_column :posts, :image, :string, null: false
  end
end
