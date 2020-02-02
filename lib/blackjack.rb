require "pry"
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
   # gets.chomp
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
   first_card = deal_card
   
   second_card = deal_card
   card_total = first_card + second_card
   
   display_card_total(card_total)
   return card_total
  #binding.pry
end

def hit?(card_total)
  # code hit?
  prompt_user
# card_total = display_card_total(card_total)
  user_input = get_user_input
  if user_input == "h"
     new_card = deal_card
     
     card_total += new_card
  elsif user_input == "s"
  
  return card_total
else
   #prompt_user
   invalid_command
   prompt_user
    get_user_input
    
 #  initial_round
  # return card_total
end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
card_total = initial_round
 hit?(card_total)
  # code runner here
  
 display_card_total
 until  card_total < 21  
end
    
