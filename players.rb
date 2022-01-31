class Player
  @@number_of_players = 0

  attr_accessor :score, :short_p, :long_p

  def initialize
    @@number_of_players += 1
    self.score = 3
    self.short_p = "P #{@@number_of_players}"
    self.long_p = "Player #{@@number_of_players}"
  end

  def lose_life
    self.score -= 1
  end

  def final_score
    "#{score}/3"
  end

end

# input cli
# input = $stdin.gets.chomp
# puts input