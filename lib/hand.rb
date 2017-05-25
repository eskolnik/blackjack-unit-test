require_relative 'card'

class Hand
  attr_accessor :cards, :name
  def initialize(name, starting_cards)
    @name = name
    @cards = starting_cards
  end

  def calculate_hand
    value = @cards.reduce { |card| card.value }
    if @cards.count {|card| card.ace?} >=1 && value <= 11
      value + 10
    else
      value
    end
  end

end
