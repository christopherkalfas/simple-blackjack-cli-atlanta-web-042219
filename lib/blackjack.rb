def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
  return user_input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_one = deal_card
  card_two = deal_card
  card_total = card_two + card_one
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
    if user_input == "h"
      card_total += deal_card
    else 
      
      return card_total
    end 
end

def invalid_command
  puts "Please enter valid command"
  prompt_user
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  card_total = 0 
  welcome
  initial_round
  if card_total < 21
    hit?
    display_card_total(card_total)
  else card_total > 21
    end_game
  end 
end
    
