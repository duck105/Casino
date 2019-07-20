class ParticipantsController < ApplicationController
  def index
    @participants = Participant.all
  end

  def new
    @participant = Participant.new
  end

  def create
    @participant = Participant.new(participant_params)
  end

  def show
    @participant = Participant.find(params[:id])
    @bets = @participant.bets.paid
  end

  private
  def participant_params
    params.require(:participant).permit(:name)
  end
end
