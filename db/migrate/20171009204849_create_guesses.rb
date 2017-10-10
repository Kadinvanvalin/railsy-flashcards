class CreateGuesses < ActiveRecord::Migration[5.1]
  def change
    create_table :guesses do |t|
      t.integer :card_id
      t.integer :round_id
      t.boolean :correct
      t.boolean :guessed
      t.timestamps
    end
    add_foreign_key :guesses, :cards
    add_foreign_key :guesses, :rounds
  end
end
