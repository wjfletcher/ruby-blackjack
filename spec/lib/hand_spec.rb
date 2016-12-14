require "spec_helper"

# #total_value => sum of car values (blackjack rules)
# #cards => returns cards in hand
# #add_cards => add cards to hand

RSpec.describe Hand do
  let(:hand) { Hand.new([Card.new("10♦"), Card.new("J♥")]) }
  let(:hand_2) { Hand.new([Card.new("A♦"), Card.new("Q♥")]) }
  let(:hand_3) { Hand.new([Card.new("A♦"), Card.new("A♥")]) }
  let(:hand_4) { Hand.new([Card.new("A♦"), Card.new("A♥"), Card.new("A♥")]) }
  let(:hand_5) { Hand.new([Card.new("A♦"), Card.new("A♥"), Card.new("A♥"), Card.new("A♥")]) }
  let(:hand_6) { Hand.new([Card.new("3♦"), Card.new("J♥"), Card.new("A♥")]) }
  let(:hand_7) { Hand.new([Card.new("A♦"), Card.new("J♥"), Card.new("6♥")]) }
  describe "#calculate_hand" do

    it "passes" do
      expect(hand.calculate_hand).to eq(20)
      expect(hand_2.calculate_hand).to eq(21)
      expect(hand_3.calculate_hand).to eq(12)
      expect(hand_4.calculate_hand).to eq(13)
      expect(hand_5.calculate_hand).to eq(14)
      expect(hand_6.calculate_hand).to eq(14)
    end
  end
end
