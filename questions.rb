class Question

  attr_reader :number1, :number2
  
  def initialize
    @number1 = rand(10)
    @number2 = rand(10)
  end

  def q
    "What does #{@number1} plus #{@number2} equal?"
  end

end