class GuessesController < ApplicationController
  def create
    @deck = Deck.find(params[:deck_id])
    @round = Round.new(user: current_user, deck: @deck)
    if @round.save
      @card = @round.cards[0]
      redirect_to @card
    else
      @decks = Deck.all
      @errors = @round.errors.full_messages
      render 'decks/index'
    end
  end
end
