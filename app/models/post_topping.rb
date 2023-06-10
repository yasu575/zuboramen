class PostTopping < ApplicationRecord
  belongs_to :post
  belongs_to :topping
  
  validates :post_id, presence: true
  validates :topping_id, presence: true
end
