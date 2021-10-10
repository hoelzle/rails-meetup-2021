module API
class DecoratedProductsController < ProductsController
  def show
    @decorated_product = Price.new product, customer
    render json: Representers::Product.new(@decorated_product)
  end

  def index
    @decorated_products = Collection.new products, customer, Price
    render json: Representers::Product.for_collection.new(@decorated_products)
  end

  private

  def customer
    @customer ||= Customer.find permitted_params[:customer_id]
  end

  def permitted_params
    params.permit :id, :customer_id
  end
end
end