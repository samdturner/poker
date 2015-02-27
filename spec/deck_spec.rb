require 'rspec'
require 'deck'

RSpec.describe Deck do
  subject(:deck) { Deck.new }

  it "should initialize the deck with 52 cards" do
    expect(deck.count).to eq(52)
  end

  # it "should shuffle the cards randomly" do
  #   expect(deck.shuffle).not_to eq(deck.cards)
  # end

  describe "#deal_cards" do
    it "should deal cards from the top of the deck" do
      expect(deck.deal_cards(2).length).to eq(2)
    end

    it "should return nil if the number of cards requested
        is greater than the number of cards in the deck" do
      expect(deck.deal_cards(54)).to eq(nil)
    end

    it "should remove the two cards from the top of the deck" do
      deck.deal_cards(2)
      expect(deck.count).to eq(50)
    end
  end

  describe "#return_cards" do
    let(:ace) { Card.new(:ace, :hearts) }
    let(:king) { Card.new(:king, :spades) }
    it "should return the cards to the bottom of the deck" do
      deck.return_cards([ace, king])
      expect(deck.count).to eq(54)
      expect(deck.cards[-2..-1]).to eq([ace, king])
    end
  end

end
