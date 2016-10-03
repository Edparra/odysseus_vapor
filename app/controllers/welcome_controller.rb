class WelcomeController < ApplicationController
  def homepage

    @products = Product.all

  end


end
