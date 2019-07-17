require('rspec')
require('pry')
require('rock_paper_scissors')

describe('RPS#beats?') do

  it("returns false if rock is the object and rock is the argument") do
    player1 = RPS.new("rock")
    player2 = RPS.new("rock")
    expect(player1.beats?(player2)).to(eq(false))
  end

  it("returns false if rock is the object and rock is the argument") do
    player1 = RPS.new("rock")
    player2 = RPS.new("paper")
    expect(player1.beats?(player2)).to(eq(false))
  end

  it("returns true if rock is the object and scissors is the argument") do
    player1 = RPS.new("rock")
    player2 = RPS.new("scissors")
    expect(player1.beats?(player2)).to(eq(true))
  end

  it("returns false if paper is the object and scissors is the argument") do
    player1 = RPS.new("paper")
    player2 = RPS.new("scissors")
    expect(player1.beats?(player2)).to(eq(false))
  end

  it("returns false if scissors is the object and scissors is the argument") do
    player1 = RPS.new("scissors")
    player2 = RPS.new("scissors")
    expect(player1.beats?(player2)).to(eq(false))
  end

end
