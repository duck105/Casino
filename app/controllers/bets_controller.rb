class BetsController < ApplicationController
  def new
    @bet = Bet.new
    @target = params[:participant_id] if params[:participant_id].present?
  end

  def create
    @bet = Bet.new(bet_params)
    if @bet.save
      redirect_to root_path
    else
      flash[:notice] = errors.message
      render :new
    end
  end

  private
  def bet_params
    params.require(:bet).permit(:name, :team, :participant_id, :money)
  end
end
