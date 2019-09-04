class BetsController < ApplicationController
  def new
    @bet = Bet.new
    @target = params[:participant_id] if params[:participant_id].present?
  end

  def create
    @bet = Bet.new(bet_params)
    if @bet.save
      flash[:notice] = "下注成功，請至櫃檯付款！"
      redirect_to root_path
    else
      flash[:alert] = @bet.errors.full_messages.to_sentence
      render :new
    end
  end

  private
  def bet_params
    params.require(:bet).permit(:name, :team, :participant_id, :money)
  end
end
