require 'minitest/autorun'
require 'minitest/rg'
require_relative '../game'
require_relative '../board'
require_relative '../player'

class TestGame < MiniTest::Test
  def setup
    positions = {
      2 => 4,
      7 => -7
    }
    board = Board.new(9, positions)

    @player1 = Player.new("Keith")
    @player2 = Player.new("Zsolt")
    @players = [@player1, @player2]
    @game = Game.new(@players, board)
  end

  def test_game_starts_with_2_players
    assert_equal(2, @game.number_of_players)
  end

  def test_game_current_player_starts_as_player_1
    assert_equal(@player1, @game.current_player)
  end

  def test_can_update_current_player
    @game.update_current_player
    assert_equal(@player2, @game.current_player)
  end

  def test_can_take_turn
    @game.next_turn(1)
    assert_equal(@player2, @game.current_player)
    assert_equal(1, @player1.position)
  end

  def test_cannot_beyond_end
    @game.next_turn(15)
    assert_equal(8, @player1.position)
  end

  def test_can_take_turn_with_ladder
    @game.next_turn(2)
    assert_equal(@player2, @game.current_player)
    assert_equal(6, @player1.position)
  end

  def test_can_take_turn_with_snake
    @game.next_turn(7)
    assert_equal(@player2, @game.current_player)
    assert_equal(0, @player1.position)
  end

  def test_winner_starts_as_nil
    assert_equal(nil, @game.winner)
  end

  def test_game_is_won
    @game.next_turn(8)
   assert_equal(true, @game.is_won?)        
  end

  def test_no_next_turn_on_win
    @game.next_turn(8)
    assert_equal(true, @game.is_won?)

    @game.next_turn(3)
    assert_equal(0, @player2.position)
  end
end
