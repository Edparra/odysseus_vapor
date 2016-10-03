class User < ApplicationRecord
  validates :name, :phone, :email, presence: true
end
