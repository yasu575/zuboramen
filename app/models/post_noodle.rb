class PostNoodle < ApplicationRecord
  belongs_to :post
  belongs_to :noodle

  validates :post_id, presence: true
  validates :noodle_id, presence: true
end
