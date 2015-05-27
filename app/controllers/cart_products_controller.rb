class CartProductsController < ApplicationController
  def add_product
    @cart = current_user.cart
    @product = Product.find(params[:id])
    @cart.products << @product
    redirect_to show_cart_path
  end

  def show_cart
    @product = current_user.cart.products
  end

  def remove_product
    @cart = current_user.cart
    order = @cart.cart_products.where(product_id: params[:id]).first
    order.delete
    redirect_to show_cart_path
  end

end
