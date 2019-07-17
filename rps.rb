require('./lib/rock_paper_scissors')

# puts "Enter 1 for single player or 2 for two player: "
# number_of_players = gets.chomp.to_i
while true do
  print "Enter choice - rock, paper, scissors: "
  choice = gets.chomp
  player1 = RPS.new(choice)
  choices = ["rock", "paper", "scissors"]
  computerChoice = choices[rand(0...choices.length)]
  puts "Computer chose " + computerChoice
  computer = RPS.new(computerChoice)
  if player1.beats?(computer)
    puts choice + " beats " + computerChoice
    puts "You win!"
  elsif computer.beats?(player1)
    puts computerChoice + " beats " + choice
    puts "Loser!"
  elsif choice == computerChoice
    puts "Draw!"
  else
    puts "I'm sorry Dave, I can't do that."
  end
  print "Enter Y to play again, or any other key to quit: "
  if (gets.chomp.downcase != "y")
    break
  end
end
