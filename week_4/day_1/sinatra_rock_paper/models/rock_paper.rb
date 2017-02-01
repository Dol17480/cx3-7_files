require 'pry-byebug'


class RockPaper

  def initialize(rock, paper, scissors)
    @rock = "r"
    @paper = "p"
    @scissors = "s"
  end

 def rock_paper
    computer = rand(3)
    if computer == 0
      computer = "p"
    elsif computer == 1
      computer = "r"
    else
      computer = "s"
    end
  end

# binding.pry

end