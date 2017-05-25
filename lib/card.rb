class Card
  attr_reader :suit, :value
  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def ace?
    @value == 'A'
  end

  def value
    if ace?
      1
    elsif face_card?
      10
    else
      value
    end
  end

  def face_card?
    %w{J Q K}.include? @value
    # ['J', 'Q', 'K'].include @value
  end

end
