class RPS
  def initialize(choice)
    @choice = choice
  end

  def beats?(otherRPS)
    win_matrix = [
      [false, false, true],
      [true, false, false],
      [false, true, false]
    ]
    win_matrix[choiceIndex][otherRPS.choiceIndex]
  end

  def choice
    @choice
  end

  def choiceIndex
    if @choice == "rock"
      0
    elsif @choice == "paper"
      1
    else
      2
    end
  end
end
