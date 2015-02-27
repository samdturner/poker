require 'rspec'
require 'card'

RSpec.describe Card do
  subject(:card) { Card.new(:king, :hearts)}

  it "initializes the card with the correct value & suit" do
    expect(card.suit).to eq(:hearts)

    expect(card.value).to eq(:king)
  end

  describe "#all_suits" do
    it "should return an array of all possible suits" do
      expect(Card.all_suits).to eq([:clubs, :diamonds, :hearts, :spades])
    end
  end

  describe "#all_values" do
    it "should return an array of all card values" do
      expect(Card.all_values).to eq([:deuce,
                                     :three,
                                     :four,
                                     :five,
                                     :six,
                                     :seven,
                                     :eight,
                                     :nine,
                                     :ten,
                                     :jack,
                                     :queen,
                                     :king,
                                     :ace])
    end
  end

  describe "#to_s" do
    it "should return the string value of the card" do
      expect(card.to_s).to eq("K♥")
    end
  end

  describe "#value_comparison" do
    let(:eight) { Card.new(:eight, :diamonds) }
    it "should return 1 if the card has a greater value" do
      expect(card.value_comparison(eight)).to eq(1)
    end

    let(:king) { Card.new(:king, :spades) }
    it "should return 0 if the card has equal value" do
      expect(card.value_comparison(king)).to eq(0)
    end

    let(:ace) { Card.new(:ace, :clubs) }
    it "should return -1 if the card has less value" do
      expect(card.value_comparison(ace)).to eq(-1)
    end
  end
end
