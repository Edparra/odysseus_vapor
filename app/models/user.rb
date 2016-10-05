class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email, presence: true

  has_one :wishlist

    after_create :create_user_wishlist

  def create_user_wishlist
    w = Wishlist.create()
    self.wishlist = w
    self.save!
  end


end

