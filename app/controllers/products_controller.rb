class ProductsController < InheritedResources::Base
    def index
      @products = Product.page(params[:page]).per(10)
      @product_query = @products.ransack(params[:q])
      @product_result = @product_query.result
    end

    def show
      @product = Product.find(params[:id])
    end

    def search
      @product_query = Product.ransack(params[:q])
      @product_result = @product_query.result
    end
end
