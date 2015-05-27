class ProductsController < ApplicationController
before_filter :authenticate_admin!, only: "index"
  def index
    @products = Product.all
  end
  def show
    @product = Product.find(params[:id])
  end

end
