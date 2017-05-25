require "spec_helper"

# Card
# #suit => returns suit
# #value => returns value
# #ace? => returns true if ace
# #face_card => returns true if card is J, Q, or K

describe Card do
  describe "#initialize" do
    let(:card) { Card.new('♠', 'A') }

    it "has a suit" do
      expect(card.suit).to eq('♠')
    end

    it "has a value" do
      expect(card.value).to eq('A')
    end
  end

  describe "#ace?" do
    describe "when card is an ace" do
      let(:ace_card) { Card.new('♠', 'A') }

      it "returns true" do
        expect(ace_card.ace?).to be true
      end
    end

    describe "when card is not an ace" do
      let(:non_ace_card) { Card.new('♠', '10') }

      it "returns false" do
        expect(non_ace_card.ace?).to be false
      end
    end
  end

  describe "#face_card?" do
    let(:face_card) { Card.new('♠', 'K') }
    let(:non_face_card) { Card.new('♠', '4') }

    describe "when card is a face card" do
      it "returns true" do
        expect(face_card.face_card?).to be true
      end
    end

    describe "when card is not a face card" do
      it "returns false" do
        expect(non_face_card.face_card?).to be false
      end
    end
  end
end
