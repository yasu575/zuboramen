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

  def save_topping(sent_toppings)
    current_toppings = self.toppings.pluck(:name) unless self.toppings.nil?
    old_toppings = current_toppings - sent_toppings
    new_toppings = sent_toppings - current_toppings

    old_toppings.each do |old|
      self.toppings.delete Topping.find_by(name: old)
    end

    new_toppings.each do |new|
      new_post_topping = Topping.find_or_create_by(name: new)
      self.toppings << new_post_topping
    end
  end
end
