class BasketController < ApplicationController
  def show
    @furnitures = Furniture.all
  end
end
