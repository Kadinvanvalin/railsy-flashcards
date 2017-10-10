class CardsController < ApplicationController

  def show
    # @guess =
    @card = Card.find(params[:id])
  end

  def create
    @card = Card.find(params[:id])
    @guess = Guess.new(card: @card, round_id: session[:round_id])
    @guess.correct?(params[:guess])

    if @guess.save
      # find next card that hsnt been guessed correctly yet
      # pass on correct answer from previous card or congrats!
      @card = @round.cards[0]
      redirect_to @card
    else
      p "uh-oh"
    end
  end

end
