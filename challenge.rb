# Text-based Game Challenge


class Card
    attr_reader :rank, :suit
  
    def initialize(rank, suit)
      @rank = rank
      @suit = suit
    end
  
    def to_s
      "#{@rank} of #{@suit}"
    end
  #Value for cards
    def calculate_value
      if ['K', 'Q', 'J'].include?(@rank)
        10
      elsif @rank == 'A'
        11
      else
        @rank.to_i
      end
    end
  end
  
  def initialize_deck
    deck = []
    suits = ["❤️", "♦️", "♠️", "♣️"]
    ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
  
    suits.each do |suit|
      ranks.each do |rank|
        deck << Card.new(rank, suit)
      end
    end
  
    deck
  end
  
  deck = initialize_deck
  
  deck.each do |card|
    puts card.to_s
    puts "Value: #{card.calculate_value}"
  end
  

# Output:
# 2 of ❤️
# 3 of ❤️
# 4 of ❤️
# 5 of ❤️
# 6 of ❤️
# 7 of ❤️
# 8 of ❤️
# 9 of ❤️
# 10 of ❤️
# J of ❤️
# Q of ❤️
# K of ❤️
# A of ❤️
# 2 of ♦️
# 3 of ♦️
# 4 of ♦️
# 5 of ♦️
# 6 of ♦️
# 7 of ♦️
# 8 of ♦️
# 9 of ♦️
# 10 of ♦️
# J of ♦️
# Q of ♦️
# K of ♦️
# A of ♦️
# 2 of ♠️
# 3 of ♠️
# 4 of ♠️
# 5 of ♠️
# 6 of ♠️
# 7 of ♠️
# 8 of ♠️
# 9 of ♠️
# 10 of ♠️
# J of ♠️
# Q of ♠️
# K of ♠️
# A of ♠️
# 2 of ♣️
# 3 of ♣️
# 4 of ♣️
# 5 of ♣️
# 6 of ♣️
# 7 of ♣️
# 8 of ♣️
# 9 of ♣️
# 10 of ♣️
# J of ♣️
# Q of ♣️
# K of ♣️
# A of ♣️

#winning possibilities:

if player_value == 21
    puts "congrats"
end

while player_value < 21
    