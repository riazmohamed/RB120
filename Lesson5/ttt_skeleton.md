
```ruby
# Game description
# ttt is a 2 player board game played on a 3x3 grid. Players take turns marking a square. The first player to mark 3 squares in a row wins.

# Nouns: board, players, square, grid
# Verbs: play, mark

=begin
Board
Square
Player
- mark
- play
=end

class Board
  def initialize
    # we need to someway model the 3x3 grid. Maybe "squares"?
    # what data structures should we use?
    # - array/hash of Square objects?
    # - array/hash of strings or integers?
  end
end

class Square
  def initialize
    # maybe a status to keep track of this square's mark
  end
end

class Players
  def initialize
    # maybe a marker to keep track of this player's symbol (i.e 'X' or 'O')
  end

  def mark
  end

  def play
  end
end

# Orchestration engine
class TTTGame
  def play
    display_welcome_message
    loop do
      display_board
      first_player_moves
      break if someone_won? || board.full?

      second_player_moves
      break if someone_won? || board_full?
    end

    display_result
    display_goodbye_message
  end
end

# we'll kick off the game like this
game = TTTGame.new
game.play
```