=begin
# step 1: description of the game

Rock, Paper, Scissors is a two-player game where each player chooses
one of three possible moves: rock, paper, or scissors. The chosen moves
will then be compared to see who wins, according to the following rules:

- rock beats scissors
- scissors beats paper
- paper beats rock

If the players chose the same move, then it's a tie.

# Step2: extracting the nouns and verbs

Nouns: player, move, rules
Verbs: choose, compare

note: Rock, Paper and Scissors are ignores as they are the states of the noun 'move'

# step 3 organising the verbs with the nouns

Player
  - choose
Move
Rule

- compare
Note:- add choosing logic between the human choose and the player choose
this can be acheived by using some sort of a state
=end

class Player
attr_accessor :move

  def initialize(player_type = :human)
    # maybe a "name"? what about a "move"?
    @player_type = player_type
    @move = nil
  end

  def choose
    if human?
      choice = nil
      loop do
        puts "Please choose rock, paper or scissors:"
        choice = gets.chomp
        break if ['rock', 'paper', 'scissors'].include?(choice)
        puts "Sorry, invalid choice."
      end

      self.move = choice
    else
      self.move = ['rock', 'paper', 'scissors'].sample
    end
  end

  def human?
      @player_type == :human
  end
end

class Move
  def initialize
    # seems like we need something to keep track
    # of the choice... a move object can be "paper", "rock" or "scissors"
  end
end

class Rule
  def initialize
    # not sure what the "state" of a rule object should be
  end
end

# not sure where "compare" goes yet
def compare(move1, move2)

end

# Game Orchestration Engine
class RPSGame
  attr_accessor :human, :computer

  def initialize
    @human = Player.new    # collaborator object
    @computer = Player.new(:computer) # collaborator object
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors!"
  end

  def display_goodbye_message
    puts "Thank you for playing Rock, Paper, Scissors!"
  end

  def display_winner
    puts "You chose #{human.move}."
    puts "The computer chose #{computer.move}"
  end

  # procedural programming implementaation
  def play
    display_welcome_message
    human.choose
    computer.choose
    display_winner
    display_goodbye_message
  end
end

game = RPSGame.new
p game.play
