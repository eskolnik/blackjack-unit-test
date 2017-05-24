require "spec_helper"

# Hand
# #cards => return the cards in the hand
# #value => return the total value of the hand
# #to_s => return a string representation of the hand
# #add_card! => add a card to the hand

RSpec.describe Hand do
  let!(:ace1) { Card.new('♠', "A") }
  let!(:ace2) { Card.new('♥', "A") }
  let!(:jack1) { Card.new('♠', "J") }
  let!(:jack2) { Card.new('♥', "J") }
  let!(:four) { Card.new('♠', "4") }
  let!(:seven) { Card.new('♣', "7") }

  describe "#cards" do
    let(:hand) { Hand.new([ace1, jack1]) }

    it "returns the cards in the hand" do
      expect(hand.cards).to contain_exactly(ace1, jack1) #matches array elements disregarding order
    end
  end

  describe "#value" do
    describe "for an empty hand" do
      let(:hand) { Hand.new([]) }

      it "returns 0" do
        expect(hand.value).to eq(0)
      end
    end

    describe "for a hand with no face cards or aces" do
      let(:hand) { Hand.new([seven, four]) }

      it "returns the value of the hand" do
        expect(hand.value).to eq(11)
      end
    end

    describe "for a hand with multiple face cards" do
      let(:hand) { Hand.new([jack1, jack2]) }

      it "returns the value of the hand" do
        expect(hand.value).to eq(20)
      end
    end

    describe "for a hand with multiple aces" do
      let(:hand) { Hand.new([ace1, ace2, seven]) }

      it "returns the value of the hand" do
        expect(hand.value).to eq(19)
      end
    end
  end

  describe "#to_s" do
    let(:hand) { Hand.new([ace1, jack1, seven]) }
    it "returns a string representation of the hand" do
      expect(hand.to_s).to eq("A, J, 7")
    end
  end

  describe "add_card!" do
    let(:hand) { Hand.new([ace1, jack1, seven]) }

    it "adds a card to the hand" do
      hand.add_card!(ace2)
      expect(hand.cards).to include(ace2)
    end
  end
end
