class Noodle < ApplicationRecord
  has_many :post_noodles, dependent: :destroy, foreign_key: 'noodle_id'

  has_many :posts, through: :post_noodles
end
