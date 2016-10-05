class Product < ApplicationRecord
  has_and_belongs_to_many :wishlists

  def to_s
    "Title: #{title}"
  end
end
