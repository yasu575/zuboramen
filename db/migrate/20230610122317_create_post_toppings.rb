class CreatePostToppings < ActiveRecord::Migration[7.0]
  def change
    create_table :post_toppings do |t|
      t.references :post, null: false, foreign_key: true
      t.references :topping, null: false, foreign_key: true

      t.timestamps
    end
    #同じタグを2回保存するのはできないようにする
    add_index :post_toppings, [:post_id, :topping_id], unique: true
  end
end
