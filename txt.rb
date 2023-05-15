def game_intro
    puts "Welcome to the jungle!"
    puts "You wake up and find yourself on an island."
    puts "Clueless as to how you arrived, you begin to venture the island to find some answers."
    puts
    puts "Let the adventure begin!"
end

def get_name
    puts "What is your name?"
    name = gets.chomp
    puts "Hello, #{name}!"
    puts
    puts "To begin your adventure, pick one item to aid you."
    puts "Choose between a bed, a spoon, or a radio."
    puts
end

def get_item1
    item = gets.chomp.downcase
    if item == "bed"
        puts "You have chosen a bed."
        puts "You sleep for a while."
        puts "You have a comfortable place to sleep, but you feel scared and lonely."
    elsif item == "spoon"
        puts "You have chosen a spoon."
        puts "You take a bite of your imaginary food."
        puts "You feel sad and depressed."
    elsif item == "radio"
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
    puts "Which path do you choose?" 
end

def get_path
    path = gets.chomp.downcase
    if path == "left"
        puts "You chose the left path."
        puts "You venture down and find a pitfall with spikes."
        puts "You fall into the pit and die."
    elsif path == "right"
        puts "You chose the right path."
        puts "You venture down and find a ladder."
        puts "You climb the ladder and find a secret room."
        puts "Inside the room, you find canned food that has clearly been there for years."
        puts "You eat the food and feel refreshed."
        continue_quest
    elsif path == "center"
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
    puts "Do you wish to speak with to explore the village or continue solo?"
    puts "pick explore or solo"

    answer = gets.chomp.downcase
    if answer == "explore"
        puts "You checkout the village  and find out that they are all dead."
        puts "You continue on your quest."
        continue_quest_side
    elsif answer == "solo"
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
get_name
get_item1
cont_story
get_path
