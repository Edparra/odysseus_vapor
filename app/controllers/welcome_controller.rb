class WelcomeController < ApplicationController
  def homepage

    @products = Product.all

  end

  def about

  end


end
