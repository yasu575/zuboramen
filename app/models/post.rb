class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes

  has_many :post_noodles, dependent: :destroy
  has_many :noodles, through: :post_noodles

  has_many :post_toppings, dependent: :destroy
  has_many :toppings, through: :post_toppings

  mount_uploader :image, ImageUploader

  validates :title, presence: true, length: { maximum: 255 }
  validates :topping, presence: true
  validates :image, presence: true
  validates :content, length: { maximum: 65535 }
end
