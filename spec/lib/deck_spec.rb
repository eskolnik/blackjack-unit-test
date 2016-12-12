require "spec_helper"

# Deck
# #initialize #=> construct a Deck of 52 cards
# #shuffle! #=> shuffles the remaining Cards in the deck
# #draw! #=> removes and returns the top Card of the deck

RSpec.describe Deck do
  let(:deck) { Deck.new }

  describe "#initialize" do
    it "contains 52 cards" do
      expect(deck.cards.count).to eq(52)
    end

    it "contains Card objects" do
      expect(deck.cards.first).to be_a(Card)
    end

    it "contains 13 spades" do
      spades = deck.cards.select { |card| card.suit == :spade }
      expect(spades.count).to eq(52)
    end
  end

  describe "#shuffle!" do
    before(:each) do
      #Always start the randomizer in the same place
      srand 1234
    end

    it "randomizes the order of the deck" do
      first_card = deck.cards.first
      last_card = deck.cards.last
      deck.shuffle!
      expect(deck.cards.first).to_not eq(first_card)
      expect(deck.cards.last).to_not eq(last_card)
    end
  end

  describe "#draw!" do
    it "removes the top card of the deck" do
      first_card = deck.cards.first
      deck.draw!
      expect(deck.cards.count).to eq(51)
      expect(deck.cards.first).not_to eq(first_card)
    end

    it "returns the drawn card" do
      first_card = deck.cards.first
      drawn_card = deck.draw!
      expect(drawn_card).to eq(first_card)
    end
  end
end
