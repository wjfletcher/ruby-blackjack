require "spec_helper"

# #value => return values
# #suit => return suit
# #game_value => blackjack game value
# #ace? => returns true if ace
# #face_card? => returns true if face card

RSpec.describe Card do
  describe "#initialize" do
    let(:card) { Card.new("8♠")}

    it "has a value" do
      expect(card.card_id[0]).to eq("8")
    end

    it "has a suit" do
      expect(card.card_id[1]).to eq("♠")
    end
  end

  describe "#ace?" do
    describe "when card is an ace" do
      let(:card) { Card.new("A♣")}

      it "returns true" do
        expect(card.is_ace?).to be true
      end
    end

    describe "when card is not an ace" do
      let(:card) { Card.new("10♣")}

      it "returns false" do
        expect(card.is_ace?).to be false
      end
    end
  end

  describe "#face_card?" do
    describe "when card is a face_card" do
      let(:card) { Card.new("J♣")}

      it "returns true" do
        expect(card.is_face?).to be true
      end
    end

    describe "when card is not a face_card" do
      let(:card) { Card.new("8♣")}

      it "returns false" do
        expect(card.is_face?).to be false
      end
    end
  end
end
