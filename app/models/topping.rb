class Topping < ApplicationRecord
  has_many :post_toppings, dependent: :destroy, foreign_key: 'topping_id'

  has_many :posts, through: :post_toppings

  validates :name, uniqueness: true, presence: true
end
