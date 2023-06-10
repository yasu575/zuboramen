class Topping < ApplicationRecord
  has_many :post_toppings, dependent: :destroy, foreigh_key: 'topping_id'

  has_many :posts, through: :post_toppings

  validates :name, uniqueness: true, presence: true
end
