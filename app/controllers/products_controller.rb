class ProductsController < ApplicationController
  # GET /products
  def index
    @products = Product.all

    render json: @products
  end

  # GET /products/1
  def show
    @product = Product.find(params[:id])

    render json: @product
  end

  private

  # Only allow a list of trusted parameters through.
  def product_params
    params.permit(:name, :price, :category, :description, :picture_url)
  end
end
