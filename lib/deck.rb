require 'card'

class Deck
  RANKS = (7..10).to_a + [:jack, :queen, :king, :ace]
  SUITS = [:hearts, :spades, :diamonds, :clubs]

  def self.all
    # For every suit next to every rank...
    SUITS.product(RANKS).map do |suit, rank|
      # Add the card to the deck
      Card.build(suit, rank)
    end
  end
end