class ProductsController < ApplicationController
  def show
    render json: product
  end

  def index
    render json: products
  end

  private

  def product
    @product ||= Product.find params[:id]
  end

  def products
    @products ||= Product.all
  end
end
