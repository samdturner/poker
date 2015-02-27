require_relative 'card'

class Deck

  #returns an array of all playing cards
  def self.all_cards
    cards_arr = []

    Card.all_values.each do |value|
      Card.all_suits.each do |suit|
        cards_arr << Card.new(value, suit)
      end
    end

    cards_arr
  end

  attr_reader :cards

  def initialize(cards = Deck.all_cards)
    @cards = cards
  end

  def count
    @cards.count
  end

  def shuffle
    @cards.shuffle!
  end

  def deal_cards(n)
    return nil if n > count

    deal_arr = []
    n.times { deal_arr << @cards.shift }
    deal_arr
  end

  def return_cards(ret_cards)
    ret_cards.each { |card| cards << card }
  end
end
