def game_intro
    puts "Welcome to the jungle!"
    puts "You wake up and find yourself on an island."
    puts "Clueless as to how you arrived, you begin to venture the island to find some answers."
    puts
  end
  
  def name
    puts "Before we begin, what is your name?"
    name = gets.chomp
    puts "Hello, #{name}!"
    puts "Would you like to join, #{name} (yes/no)?"
    answer = gets.chomp.downcase
    if answer == "yes"
      puts "That's great!"
    else
      puts "Too bad, you can't leave the island"
    end
    sleep(2)
    puts "To begin your adventure, pick one item to aid you."
    puts "Choose an item by entering the corresponding number:"
    puts "1. Bed"
    puts "2. Spoon"
    puts "3. Radio"
    puts
  end
  
  def get_item1
    item = gets.chomp.downcase
    case item
    when "1", "bed"
      puts "You have chosen a bed."
      puts "You sleep for a while."
      puts "You have a comfortable place to sleep, but you feel scared and lonely."
    when "2", "spoon"
      puts "You have chosen a spoon."
      puts "You take a bite of your imaginary food."
      puts "You feel sad and depressed."
    when "3", "radio"
      puts "You have chosen a radio."
      puts "You listen to the radio."
      puts "You hear a song."
      puts "You feel refreshed."
    else
      puts "Invalid choice. Please try again."
      get_item1
    end
  end
  
  def cont_story
    puts "After gathering your thoughts, you take your item and begin venturing the island for clues."
    puts "You find a cave and begin adventuring through it."
    puts "You come to a 3-way junction."
    puts "Which path do you choose (enter the corresponding number)?"
    puts "1. Left"
    puts "2. Right"
    puts "3. Center"
  end
  
  def get_path
    path = gets.chomp.downcase
    case path
    when "1", "left"
      puts "You chose the left path."
      puts "You venture down and see a hot girl from afar"
      puts "You chase after her and end up falling into a pitfall with spikes."
      puts "You die. Cause you're too thirsty."
    when "2", "right"
      puts "You chose the right path."
      puts "You venture down and find a ladder."
      puts "You climb the ladder and find a secret room."
      puts "Inside the room, you find canned food that has clearly been there for years."
      puts "You eat the food and feel refreshed."
      continue_quest
    when "3", "center"
      puts "You chose the center path."
      puts "You venture down and find a secret room."
      puts "Inside the room, you find a secret door."
      puts "You open the door and find a secret passage."
      puts "You venture through the secret passage and find yourself in an endless maze."
      puts "While scavenging the maze, you come across a mystical beast that offers you freedom if you answer their riddle."
      puts
      puts
      puts "The riddle is:"
      puts "I speak without a mouth and hear without ears. I have no body, but I come alive with the wind. What am I?"
  
      user_answer
      user_answer = gets.chomp.downcase
    if user_answer == "echo"
      puts "Congratulations! You answered correctly, and the mystical beast grants you freedom."
      puts "You find your way out of the maze and continue your quest."
      continue_quest
    else
      puts "Oops! That's not the correct answer. The mystical beast denies your request for freedom."
      puts "You remain trapped in the maze."
      puts "You eventually die alone in the maze."
    end
  end
end

def continue_quest
  puts "You have successfully completed the previous challenge and continue your quest."
  puts "You explore more of the island and come across a small community."
  puts "Do you wish to speak with them to explore the village or continue solo?"
  puts "Enter the corresponding number:"
  puts "1. Explore"
  puts "2. Solo"

  answer = gets.chomp.downcase
  case answer
  when "1", "explore"
    puts "You check out the village and find out that they are all dead."
    puts "You continue on your quest."
    continue_quest_side
  when "2", "solo"
    puts "You continue on your quest."
    continue_quest
  end
end

def continue_quest_side
  puts "You investigate the village for clues as to what happened."
  puts "Maybe you'll find clues to your situation as well."
  puts "You collect a journal written in another language and a knife you collected from one of the corpses."
  continue_quest
end

# Main program
game_intro
name
get_item1
cont_story
get_path
