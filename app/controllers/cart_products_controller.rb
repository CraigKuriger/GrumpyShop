class CartProductsController < ApplicationController
  # before_filter :only_admin, only: [:add_product]

  def add_product
    @cart = current_user.cart
    @product = Product.find(params[:id])
    @cart.products << @product
    redirect_to show_cart_path
  end

  def show_cart
    @product = current_user.cart.products
    total
  end

  def total
    price_array = current_user.cart.products.map(&:price)
    if price_array.empty?
       @total = 0
    else
       @total = price_array.reduce(:+).round(2)
    end
     @total
  end

  def remove_product
    @cart = current_user.cart
    order = @cart.cart_products.where(product_id: params[:id]).first
    order.delete
    redirect_to show_cart_path
  end

# private

#   def only_admin
#     redirect_to root_url and return unless current_user.admin?
#   end

end
