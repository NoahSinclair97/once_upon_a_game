class ProductsController < InheritedResources::Base
    def index
      @products = Product.page(params[:page]).per(10)
    end

    def show
      @product = Product.find(params[:id])
    end

    def search
      @product_query = Product.ransack(params[:q])
      if params[:category] == ""
        @product_result = @product_query.result
      else
        @product_result = @product_query.result.where(category_id: params[:category])
      end
      @categories = Category.all()
    end
end
