class ProductsController < ApplicationController
before_filter :authenticate_admin!, only: "index"
before_filter :authenticate_admin!, only: "new"
before_filter :authenticate_admin!, only: "edit"
  def index
    @products = Product.all
  end
  def show
    @product = Product.find(params[:id])
  end
  def edit
    @product = Product.find(params[:id])
  end
  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      redirect_to edit_product
  end
end
  def destroy
    @product = Product.destroy(params[:id])
    redirect_to products_path
  end
  def new
    @product = Product.new
  end
  def create
  @product = Product.new(product_params)
  if @product.save
    redirect_to products_path
  else
    redirect_to new_product
  end
end
  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :image_url, :category_id)
  end
end
