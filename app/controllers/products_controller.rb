class ProductsController < InheritedResources::Base
    def index
      @products = Product.page(params[:page]).per(12)
    end

    def show
      @product = Product.find(params[:id])
    end

    def search
      @product_query = Product.ransack(params[:q])
      if params[:category] == ""
        @product_result = @product_query.result.page(params[:page]).per(12)
      else
        @product_result = @product_query.result.where(category_id: params[:category]).page(params[:page]).per(12)
      end
      @categories = Category.all()
    end
end
