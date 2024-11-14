class CardsController < InheritedResources::Base

  private

    def card_params
      params.require(:card).permit(:card_number, :exp_date, :cvv)
    end

end
