class ProductsController < ApplicationController

  def index
    unless is_admin?
      render status: 403, text: "Permission Denied"
    else
       @products = Product.all
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    unless is_admin?
      render status: 403, text: "Permission Denied"
    else
    @product = Product.find(params[:id])
    end
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
    unless is_admin?
      render status: 403, text: "Permission Denied"
    else
    @product = Product.new
    end
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
