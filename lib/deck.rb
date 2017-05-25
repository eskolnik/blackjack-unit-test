require_relative "card"

class Deck
  SUITS = ['♠', '♥', '♣', '♦']
  VALUES = %w[2 3 4 5 6 7 8 9 10 J Q K A]
  attr_accessor :cards

  def initialize
    @cards = []
    SUITS.each do |suit|
      VALUES.each do |value|
        @cards << Card.new(suit, value)
      end
    end

    @cards.shuffle!
  end

  def draw!
    @cards.pop
  end
end
