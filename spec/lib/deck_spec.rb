require "spec_helper"

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
      spades = deck.cards.select { |card| card.suit == '♠' }
      expect(spades.count).to eq(13)
    end
  end


  describe "#draw!" do
    it "removes the top card of the deck" do
      top_card = deck.cards.last
      deck.draw!
      expect(deck.cards.count).to eq(51)
      expect(deck.cards.last).not_to eq(top_card)
    end

    it "returns the drawn card" do
      top_card = deck.cards.last
      drawn_card = deck.draw!
      expect(drawn_card).to eq(top_card)
    end
  end
  # describe "#shuffle!" do
  #   before(:each) do
  #     #Always start the randomizer in the same place
  #     srand 1234
  #   end
  #
  #   it "randomizes the order of the deck" do
  #     first_card = deck.cards.first
  #     last_card = deck.cards.last
  #     deck.shuffle!
  #     expect(deck.cards.first).to_not eq(first_card)
  #     expect(deck.cards.last).to_not eq(last_card)
  #   end
  # end
end
