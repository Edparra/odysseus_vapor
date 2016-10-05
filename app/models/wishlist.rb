class Wishlist < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :products

  def to_s
    "Wishlist had products #{products.join(',')}"
  end
end
