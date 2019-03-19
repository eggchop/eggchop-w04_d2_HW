require 'pry'
class Game
  def initialize(hand_1, hand_2)
    @hand_1 = hand_1
    @hand_2 = hand_2
    @total_length_hands = @hand_1.length + @hand_2.length
  end

  def check_winner
    return 'Rock Wins' if @total_length_hands == 12
    return 'Paper Wins' if @total_length_hands == 9
    return 'Scissors Wins' if @total_length_hands == 13
    return 'Draw'
  end

  def check_player
    return 'Neither Player Wins' if check_winner == 'Draw'
    if (check_winner == 'Rock Wins' && @hand_1 == 'Rock') ||
    (check_winner == 'Paper Wins' && @hand_1 == 'Paper') ||
    (check_winner == 'Scissors Wins' && @hand_1 == 'Scissors')
      return 'Player 1 Wins'
    else
      return 'Player 2 Wins'
    end
  end

end

new = Game.new('Scissors','Paper')
p new.check_winner
p new.check_player
