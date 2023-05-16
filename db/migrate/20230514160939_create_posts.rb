class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :topping, null: false
      t.string :image
      t.text :content
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
