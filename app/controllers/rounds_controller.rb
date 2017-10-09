class RoundsController < ApplicationController
  def show
    @round = Round.find(params[:id])
    @deck = @round.deck
  end

  def create
    @deck = Deck.find(params[:deck_id])
    @round = Round.new(user: current_user, deck: @deck)
    if @round.save
      redirect_to @round
    else
      @errors = @round.errors.full_messages
      render 'decks#index'
    end
  end
end
