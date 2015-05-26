class ProductsController < ApplicationController
  def show
    # @products = Product.all
    @product = Product.find(params[:id])
  end
end
