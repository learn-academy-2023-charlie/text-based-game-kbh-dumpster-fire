def display_intro
  puts "Welcome to the Zombie Apocalypse!"
  puts "You wake up to find yourself in the midst of a zombie-infested city."
  puts "Your mission is to survive and find a way to escape."
  puts "Let the adventure begin!"
  puts
end

def get_user_choice(choices)
  loop do
    puts "What will you do?"
    choices.each_with_index { |choice, index| puts "#{index + 1}. #{choice}" }
    input = gets.chomp.to_i
    return input if (1..choices.length).include?(input)
    puts "Invalid choice. Please try again."
  end
end

def explore_city(inventory)
  puts "You venture into the abandoned city..."
  puts "You encounter a group of hot women!"
  choices = ["Join them", "Go your own way"]
  choice = get_user_choice(choices)

  if choice == 1
    puts "You join the group of survivors. Strength in numbers!"
    # Add group item to the inventory
  else
    puts "You decide to go your own way. Good luck!"
  end

  puts "You continue your journey..."
  # Continue the exploration and storytelling
end

def scavenge_supplies(inventory)
  puts "You search for supplies in an abandoned building..."
  # Add scavenging logic here
  puts "You find some useful items and add them to your inventory."
  # Add items to the inventory
end

def fight_zombies(inventory)
  puts "You come across a horde of zombies!"
  puts "What will you do?"
  choices = ["Fight them", "Run for your life"]
  choice = get_user_choice(choices)

  if choice == 1
    puts "You fight off the zombies with all your strength!"
    # Implement combat logic
    puts "You survive the battle, but you're injured."
    # Adjust player's health
  else
    puts "You run as fast as you can, narrowly escaping the zombies."
  end

  puts "You continue your journey..."
  # Continue the exploration and storytelling
end

def find_escape_route
  puts "You discover a potential escape route: a hidden underground tunnel."
  puts "However, it is blocked by a heavy metal door."
  puts "What will you do?"
  choices = ["Look for a key", "Try to force the door open"]
  choice = get_user_choice(choices)

  if choice == 1
    puts "You search nearby areas and find the key to the door!"
    # Add key to the inventory
  else
    puts "You try to force the door open, but it's too sturdy."
  end

  puts "You manage to open the door and enter the tunnel."
  puts "Freedom awaits!"
end

def game_over(message)
  puts "Game Over: #{message}"
  exit
end

def play_game
  display_intro
  inventory = []
  explore_city(inventory)
  scavenge_supplies(inventory)
  fight_zombies(inventory)
  # Continue the game flow
  find_escape_route

  # Example of game over condition:
  game_over("Oh no! You got surrounded by a massive horde of zombies and couldn't escape.")
end

play_game