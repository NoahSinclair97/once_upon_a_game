class ProductCartsController < InheritedResources::Base

  private

    def product_cart_params
      params.require(:product_cart).permit(:product_id, :cart_id)
    end

end
