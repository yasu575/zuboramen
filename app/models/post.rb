class Post < ApplicationRecord
  belongs_to :user

  mount_uploader :image, ImageUploader

  validates :title, presence: true, length: { maximum: 255 }
  validates :topping, presence: true
  validates :image, presence: true
  validates :content, length: { maximum: 65535 }
end
