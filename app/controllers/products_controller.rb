class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def new
    @product = Product.new
  end

  def create
    @product = Product.create!(product_params)
    redirect_to root_path
  end

  def index
    @products = Product.all
  end

  private

  def product_params
    params.require(:product).permit(:name, :tagline)
  end
end
