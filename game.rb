class Game
  def initialize(name)
    @name = name
    @player_1 = Player.new('Player 1')
    @player_2 = Player.new('Player 2')
  end

  def start_game
    puts "Welcome to the game #{@player_1.name} and #{@player_2.name}.  May the odds be ever in your favour!"
    turn
  end

  def show_score
    puts "#{@player_1.name} has #{@player_1.lives}/3 lives left.  #{@player_2.name} has #{@player_2.lives}/3 lives left."
  end

  def check_score
    if @player_1.dead
      winner(@player_2)
    elsif @player_2.dead
      winner(@player_1)
    end
  end

  def winner(player)
    puts "#{player.name} wins the game with a score of #{player.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
    exit(0)
  end

  def turn
    @player_1.new_question
    check_score
    @player_2.new_question
    check_score
    show_score
    puts '-----NEW TURN -----'
    turn
  end
end



