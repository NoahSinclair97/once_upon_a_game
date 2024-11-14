class AddressesController < InheritedResources::Base

  private

    def address_params
      params.require(:address).permit(:unit, :city, :province, :postal_code)
    end

end
