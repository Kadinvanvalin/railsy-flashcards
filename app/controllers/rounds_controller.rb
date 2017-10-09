class RoundsController < ApplicationController
  def show
  end

  def create
    @round = Round.new(user: current_user, deck: Deck.find(params[:deck_id]))
    if @round.save
      redirect_to @round
    else
      @errors = @round.errors.full_messages
      render 'decks#index'
    end
  end
end
