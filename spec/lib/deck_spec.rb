require "spec_helper"

# #init #=> deck of 52 Cards
# #deal/draw #=> remove (x) cards from the deck and return them
# shuffle => randomize the deck order

RSpec.describe Deck do
  let(:deck) { Deck.new }

  describe "#initialize" do
    it "has 52 cards" do
      expect(deck.cards.size).to eq(52) #count 52
      expect(deck.cards[0]).to be_a(Card)  #contains cards
    end
  end

  describe "#deal!" do
    it "removes a card" do
      deck.deal!(1)
      expect(deck.cards.size).to eq(51)
    end

    it "removes multiple card" do
      deck.deal!(10)
      expect(deck.cards.size).to eq(42)
    end

    it "returns the removed card" do
      dealt_card = deck.deal!(1)[0]
      expect(dealt_card).to be_a(Card)
    end
  end

  describe "#shuffle!" do
    before(:each) do
      srand 10
    end

    it "randomizes the deck" do
      first_card = deck.cards[0]
      deck.shuffle!
      expect(deck.cards[0]).to_not eq(first_card)
    end
  end
end
