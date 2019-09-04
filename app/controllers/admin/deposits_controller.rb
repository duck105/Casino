module Admin
  class DepositsController < Admin::ApplicationController
    # To customize the behavior of this controller,
    # you can overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Bet.
    #     page(params[:page]).
    #     per(10)
    # end


    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   Bet.find_by!(slug: param)
    # end
    def destroy_all
      Deposit.destroy_all
      redirect_to admin_deposits_path
    end
  end
end
