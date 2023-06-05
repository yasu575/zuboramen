class CreatePostNoodles < ActiveRecord::Migration[7.0]
  def change
    create_table :post_noodles do |t|
      t.references :post, null: false, foreign_key: true
      t.references :noodle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
