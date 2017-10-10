class Guess < ApplicationRecord
  belongs_to :round
  belongs_to :card

  def correct?(input_answer)
    if self.card.answer.downcase == input_answer.downcase
      self.correct = true
    else
      self.correct = false
    end
  end
end
