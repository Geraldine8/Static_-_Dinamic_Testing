require('minitest/autorun')
require('minitest/rg')
require_relative('../card_game.rb')
require_relative('../card.rb')
require('pry')

class CardTest < MiniTest::Test

  def setup
    @card_game  = CardGame.new()
    @card1 = Card.new('spades', 1)
    @card2 = Card.new('diamonds', 7)
    @cards = [@card1, @card2]
  end

  def test_checkforAce()
    assert_equal(true, @card_game.checkforAce(@card1))
    assert_equal(false, @card_game.checkforAce(@card2))
  end


  def test_highest_card()
    assert_equal(@card2, @card_game.highest_card(@card1, @card2))
  end

  def test_cards_total()
    assert_equal("You have a total of8", CardGame.cards_total(@cards))
  end

end
