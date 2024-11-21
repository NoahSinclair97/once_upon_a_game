class ProductsController < InheritedResources::Base
    def index
      @products = Product.page(params[:page]).per(10)
    end

    def show
      @product = Product.find(params[:id])
    end
end
