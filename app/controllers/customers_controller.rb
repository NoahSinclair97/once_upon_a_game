class CustomersController < InheritedResources::Base

  private

    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :address_id, :card_id, :cart_id, :user_id)
    end

end
