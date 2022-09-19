class Question
  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2

    def ask_question(name)
      puts "#{name}: What number do you get when you add the numbers #{@number1} and #{@number2} together?"
    end

    def check_answer?(response)
      @answer == response
    end
  end
end
