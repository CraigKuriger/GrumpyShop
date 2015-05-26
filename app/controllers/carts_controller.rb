class CartsController < ApplicationController

  def show
    @cart = Cart.find(current_user)
  end


end
