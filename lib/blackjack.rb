def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
end

def deal_card
  rand(1..11)
  # code #deal_card here
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets.chomp
  # code #get_user_input here
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  hand = deal_card + deal_card
  display_card_total(hand)
  hand
end

def hit?(total)
  prompt_user
  action = get_user_input

  if action == 'h'
    total += deal_card
  elsif action == 's'
    total
  # else
  #   invalid_command
  end
  # code hit? here
end

def invalid_command
  # puts "You must enter 'h' or 's'."
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  player_hand = initial_round
  # display_card_total(player_hand)

  while player_hand <= 21 do
    player_hand = hit?(player_hand)
    display_card_total(player_hand)
  end
  end_game(player_hand)
  # code runner here
end
