

class Card


  def initialize(card)
    @card = card
  end

  def is_face?
    if @card.include?("J") || @card.include?("Q") || @card.include?("K")
      is_face = true
    else
      is_face = false
    end
    is_face
  end

  def is_ace?
    if @card.include?("A")
      is_ace = true
    else
      is_ace = false
    end
    return is_ace
  end

  def is_num?
    if @card.to_i != 0
      is_num = true
    else
      is_num = false
    end
    return is_num
  end

  def card_id
    @card
  end

end
