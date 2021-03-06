class RoundsController < ApplicationController
  def show
    @round = Round.find(params[:id])
    @deck = @round.deck
  end

  def create
    @deck = Deck.find(params[:deck_id])
    @round = Round.new(user: current_user, deck: @deck)
    if @round.save
      session[:round_id] = @round.id
      @card = @round.cards[0]
      redirect_to @card
    else
      @decks = Deck.all
      @errors = @round.errors.full_messages
      render 'decks/index'
    end
  end
end
