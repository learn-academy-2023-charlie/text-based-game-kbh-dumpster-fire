# Text-Based Game Challenge

#### Overview

Text-based games, or interactive fiction games, are one of the earliest styles of computer games. Text-based games create a narrative where the user is presented with a series of choices. Each decision the user makes moves the game forward in a unique way. Creating a text-based game requires a developer to create organized code that will trigger further code actions in response to the user's decision.

#### Learning Objectives

- can demonstrate effectively collecting user interactions from the IRB console
- can determine appropriate built-in Ruby methods needed to accomplish a task

#### Additional Resources

- Checkout [Playfic](http://playfic.com/explore/popular) for inspiration
- [ASCII Art](https://www.asciiart.eu/) can add some flair to your text
- [Output one character at a time](https://stackoverflow.com/questions/4515157/read-a-ruby-string-one-character-at-a-time-for-word-wrapping)

#### Process

- clone the appropriate repository from GitHub classroom
- `cd` into the repository
- Create a new branch for each feature you implement
- Open the folder in a text editor
- Code!

---

### Planning

The most important part of this project is the planning phase. Work with your team to construct a story line. Think of an idea that will make your game enjoyable. Common choices are treasure hunts, day-in-the-life stories, zombie apocalypse adventures, and murder mysteries.

You need to decide how your user will interact with the code that you write. Every option you present will need to be followed with an action. If you choose to create multiple storylines your code base will need to reflect all the possible actions. Each storyline can be a unique adventure where some are successful and some are not.

### Game Play

The game will take place entirely in the terminal. All interactions between the user and the game are text-based. The user will see a story printed to the terminal and then be presented with options that the will determine the next phase of the story. The user will type their selection into the terminal.

### Tips and Tricks

Think about how the user will contribute to the game. Whatever the user does will need to trigger the next step. This means as the game creator you must present your options in a easily accessible way. Options include presenting the user with yes or no choices, giving the user a numbered list of options, or prompting the user to type specific words. Keep in mind that the casing and spacing of your user's response will affect the functionality of your code.

The Ruby `gets` operator is your best friend in this game. Calling the method `.chomp` on the `gets` operator will remove the `return` keystroke syntax. The `gets` operator will always return a string. It is the developer's responsibility to change the data type if necessary.

Think about the difference between `p` and `puts`. Using `p` in development is helpful for seeing raw data outputs in the terminal. But you may not want code syntax such as quotation marks in your text-based stories.

Keep your code simple. You have all the tools you need to effectively construct the game. This is an exercise in organization, planning, and creativity.

Have fun! This medium is prime for easter eggs and (class appropriate) inside jokes.


PLANING PHASE: 

type:  Apocalyptic BlackJack 

What we need: 
Suits 
Ranks 

alternating players?:


Shuffle Function , tradition dealings hold 2-3 decks(52cards/deck)

Calculation Function 

Winner/Loser

Funtion for Split(strech goal), hit, stay, fold.. if we add betting. call

n>21 = bust
n=< 21 = good

<!-- initialize out deck 
deck = []
suits =  ["❤️", "♦️", "♠️", "♣️"]
ranks = [2,3,4,5,6,7,8,9,10,'J','Q','K','A']

deck<<[rank,suit] -->


calulations:

.map through an array 
sum 
compare



<!-- values to the cards: 
if value == 'A'
total += 11
ace_count += 1 -->



shuffling:

 const drawCard = () => {
          const draw = `${rank[Math.floor(Math.random() * rank.length)]} ${suit[Math.floor(Math.random() * suit.length)]}`
          if(hand.indexOf(draw) === -1) {
            setHand([...hand, draw])
          } else if(hand.length !== 52) {
            drawCard()
          } else {
            alert("All cards have been dealt.")
          }
        }
 const shuffle = () => {
          setHand([])
        }



        for reference :

        class Card
    attr_reader :rank, :suit
  
    def initialize(rank, suit)
      @rank = rank
      @suit = suit
    end
  
    def to_s
      "#{@rank} of #{@suit}"
    end
  
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
  
  def start_game
    deck = initialize_deck
    player_hand = []
    dealer_hand = []
    
    2.times do
      deal_card(deck, player_hand)
      deal_card(deck, dealer_hand)
    end
  
    play_player_turn(deck, player_hand)
    play_dealer_turn(deck, dealer_hand) unless player_busted?(player_hand)
    determine_winner(player_hand, dealer_hand)
  end
  
  def deal_card(deck, hand)
    card = deck.pop
    hand << card
  end
  
  def calculate_hand_value(hand)
    value = hand.sum(&:calculate_value)
    hand.select { |card| card.rank == 'A' }.count.times do
      break if value <= 21
      value -= 10
    end
    value
  end
  
  def play_player_turn(deck, player_hand)
    while calculate_hand_value(player_hand) < 21
      show_player_hand(player_hand)
      action = get_player_action
      if action == 'h'
        deal_card(deck, player_hand)
      elsif action == 's'
        break
      else
        puts "Invalid action. Please enter 'h' to hit or 's' to stand."
      end
    end
    show_player_hand(player_hand)
  end
  
  def get_player_action
    puts "What would you like to do? (h)it or (s)tand"
    gets.chomp.downcase
  end
  
  def play_dealer_turn(deck, dealer_hand)
    while calculate_hand_value(dealer_hand) < 17
      deal_card(deck, dealer_hand)
    end
    show_dealer_hand(dealer_hand)
  end
  
  def player_busted?(player_hand)
    calculate_hand_value(player_hand) > 21
  end
  
  def determine_winner(player_hand, dealer_hand)
    player_value = calculate_hand_value(player_hand)
    dealer_value = calculate_hand_value(dealer_hand)
  
    if player_busted?(player_hand)
      puts "You busted! Dealer wins."
    elsif dealer_value > 21
      puts "Dealer busted! You win."
    elsif player_value > dealer_value
      puts "You win!"
    elsif dealer_value > player_value
      puts "Dealer wins."
    else
      puts "It's a tie."
    end
  end
  
  def show_player_hand(player_hand)
    puts "Your hand: "
    player_hand.each { |card| puts card.to_s }
    puts "Total value: #{calculate_hand_value(player_hand)}"
  end
  
  def show_dealer_hand(dealer_hand)
    puts "Dealer's hand: "
    dealer_hand.each
  