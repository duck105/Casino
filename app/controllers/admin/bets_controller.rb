module Admin
  class BetsController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Bet.
    #     page(params[:page]).
    #     per(10)
    # end

    def scoped_resource
      if params[:aasm_state]
        resource_class.where(aasm_state: params[:aasm_state]).ongoing
      elsif params[:win]
        resource_class.where(participant_id: params[:win]).ongoing
      else
        resource_class.ongoing
      end
    end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Bet.find_by!(slug: param)
    # end

    def pay
      bet = Bet.find(params[:id])
      if bet.may_pay?
        bet.pay!
      else
        flash[:alert] = "操作不允許"
      end
      redirect_back(fallback_location: root_path)
    end

    def refund
      bet = Bet.find(params[:id])
      if bet.may_refund?
        bet.refund!
      else
        flash[:alert] = "操作不允許"
      end
      redirect_back(fallback_location: root_path)
    end

    def destroy_all
      Bet.destroy_all
      redirect_to admin_bets_path
    end
  end
end
