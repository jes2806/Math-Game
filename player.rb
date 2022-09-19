class Player
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def dead
    @lives == 0
  end

  def new_question
    new_question = Question.new
    new_question.ask_question(name)
    print '> '
    @userinput = $stdin.gets.chomp
    if new_question.check_answer? (@userinput.to_i)
      puts 'Yes! That is correct.'
    else 
      puts 'WRONG!'
      lose_life
    end
  end
end

 