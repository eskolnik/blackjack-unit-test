require "spec_helper"

#Card
# #value => return value
# #suit => return suit
# #game_value => blackjack game value
# #ace? => returns true if ace
# #face_card? #=> returns true if face card

RSpec.describe Card do
  describe "#initialize" do
    let(:card) { Card.new(:spade, "8")}

    it "has a suit" do
      expect(card.suit).to eq(:spade)
    end

    it "has a value" do
      expect(card.value).to eq("8")
    end
  end

  describe "#ace?" do
    describe "when card is an ace" do
      let(:card) { Card.new(:club, "A") }

      it "returns true" do
        expect(card.ace?).to be true
      end
    end

    describe "when card is not an ace" do
      let(:card) { Card.new(:club, "10") }

      it "returns false" do
        expect(card.ace?).to be false
      end
    end
  end

  describe "#face_card?" do
    describe "when card is an face card" do
      let(:card) { Card.new(:club, "J") }

      it "returns true" do
        expect(card.face_card?).to be true
      end
    end

    describe "when card is not an face_card" do
      let(:card) { Card.new(:club, "10") }

      it "returns false" do
        expect(card.face_card?).to be false
      end
    end

    describe "when card is an ace" do
      let(:card) { Card.new(:club, "A") }

      it "returns false" do
        expect(card.face_card?).to be false
      end
    end
  end
end
