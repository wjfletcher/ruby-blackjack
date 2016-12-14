require_relative 'deck'
require_relative 'card'
require 'pry'

class Hand
  def initialize(cards)
    @cards = cards
    @total = 0
  end

  def hit(card)
    @cards << card[0]
  end

  def show_hand
    hand = ""
    @cards.each do |card|
      hand += card.card_id
    end
    hand
  end

  def calculate_hand
    total = 0
    ace_count = 0
    @cards.each do |card|
      if card.is_face?
        total += 10
      elsif card.is_num?
        total += card.card_id.to_i
      elsif card.is_ace?
        ace_count += 1
        total += 11
      end
    end
    ace_check(total, ace_count)
  end

  def ace_check(total, ace_count)
    ace_count.times do
      if total > 21
        total -= 10
      end
    end
    total
  end
end
