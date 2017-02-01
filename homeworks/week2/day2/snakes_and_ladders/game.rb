class Game
  attr_reader :current_player, :winner

  def initialize(players, board)
    @players = players
    @board = board
    @current_player = players[0]
    @winner = nil
  end

  def number_of_players()
    return @players.length
  end

  def update_current_player()
    @current_player = @players.rotate![0]
  end

  def next_turn(spaces)
    return if (is_won?)
    move_player(spaces)
    update_current_player()
  end

  def move_player(spaces)
    valid_move = validate_movement(spaces)
    @current_player.move(valid_move)
    modifier = @board.modifier_at_position(@current_player.position)
    @current_player.move(modifier)
  end

  def validate_movement(spaces)
   distance_to_end = @board.win_tile
   - @current_player.position
  # movement = spaces > distance_to_end ? distance_to_end : spaces
  if (spaces > distance_to_end)
    movement = distance_to_end
  else
    movement = spaces
  end
  return movement
end

def is_won?
  for player in @players
    if player.position == @board.win_tile
      @winner = player
    end
  end
end
return (@winner != nil)

end