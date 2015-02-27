class Card
  SUIT_STRINGS = {
  :clubs    => "♣",
  :diamonds => "♦",
  :hearts   => "♥",
  :spades   => "♠"
  }

  VALUE_STRINGS = {
    :deuce => "2",
    :three => "3",
    :four  => "4",
    :five  => "5",
    :six   => "6",
    :seven => "7",
    :eight => "8",
    :nine  => "9",
    :ten   => "10",
    :jack  => "J",
    :queen => "Q",
    :king  => "K",
    :ace   => "A"
  }

  POKER_VALUE = {
    :deuce => 2,
    :three => 3,
    :four  => 4,
    :five  => 5,
    :six   => 6,
    :seven => 7,
    :eight => 8,
    :nine  => 9,
    :ten   => 10,
    :jack  => 11,
    :queen => 12,
    :king  => 13,
    :ace   => 14
  }

  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def self.all_values
    VALUE_STRINGS.keys
  end

  def self.all_suits
    SUIT_STRINGS.keys
  end

  def to_s
    VALUE_STRINGS[@value] + SUIT_STRINGS[@suit]
  end

  def value_comparison(other_card)
    own_value = POKER_VALUE[@value]
    other_value = POKER_VALUE[other_card.value]

    return 1 if own_value > other_value
    return 0 if own_value == other_value
    -1
  end
end
