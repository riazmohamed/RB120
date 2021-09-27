
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
## Step 2 and Step 3
### Set up board and square clases and Display board

```ruby
class Board
  INITIAL_MARKER = " "

  def initialize
    @squares = {}#{1 => Square.new(' '), 2 => Square.new(' ')}
    (1..9).each { |key| @squares[key] = Square.new(INITIAL_MARKER) }
  end

  def get_square_at(key)
    @squares[key]
  end
end

class Square
  def initialize(marker)
    @marker = marker
  end

  def to_s
    @marker
  end
end

class Player
  def initialize
  end

  def mark
  end
end

class TTTGame
  attr_reader :board

  def initialize
    @board = Board.new
  end

  def display_welcome_message
    puts "Welcome to Tic Tac Toe!"
    puts ""
  end

  def display_goodbye_message
    puts "Thank you for playing Tic Tac Toe!"
  end

  def display_board
    puts ""
    puts "     |     |"
    puts "  #{board.get_square_at(1)}  |  #{board.get_square_at(2)}  |  #{board.get_square_at(3)}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{board.get_square_at(4)}  |  #{board.get_square_at(5)}  |  #{board.get_square_at(6)}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{board.get_square_at(7)}  |  #{board.get_square_at(8)}  |  #{board.get_square_at(9)}"
    puts "     |     |"
    puts ""
  end

  def play
    display_welcome_message
    loop do
      display_board
      break
      first_player_moves
      break if someone_won? || board_full?

      second_player_moves
      break if someone_won? || board_full?
    end
    #display_result
    display_goodbye_message
  end
end

game = TTTGame.new
game.play
```
 
