class ProductsController < ApplicationController
before_filter :authenticate_admin!, only: "index"
  def index
    @products = Product.all
  end
  def show
    @product = Product.find(params[:id])
  end
  def destroy
    @product = Product.destroy(params[:id])
    redirect_to products_path
  end
  def new
    @product = Product.new
  end
  def create
  @product = Message.new(product_params)
  if @product.save
    redirect_to products_path
  else
    render 'new'
  end
end
  private
  def product_params
    params.require(:name).permit(:description, :price, :image_url)
  end
end
