class BowlingGame
  attr_accessor :rolls

  def initialize
    @rolls = []
  end
# Record a roll in the game.
#
# pins - The Integer number of pins knocked down in this roll.
#
# Returns nothing.
  def roll(pins)
    @rolls.push(pins)
  end

# Returns the Integer score for this game. Expects to be run after all rolls
# for the game have been recorded.
  def score
    @rolls.reduce(:+)
    total_score = 0
    current_roll = 0

    while current_roll < @rolls.size
      roll      = @rolls[current_roll]
      next_roll = @rolls[current_roll + 1]

      if roll + next_roll == 10
        total_score += 10 + @rolls[current_roll + 2]
      else
        total_score += roll + next_roll
      end

      current_roll += 2
    end

  return total_score

  end
end