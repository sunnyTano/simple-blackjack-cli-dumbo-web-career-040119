def welcome
 puts "Welcome to the Blackjack Table"
end

def deal_card
 rand(1..11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
 puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
sum = deal_card + deal_card
display_card_total(sum)
return sum
end

def hit? (num)
prompt_user
input = get_user_input
if input === 'h'
 num += deal_card
elsif input === 's'
  num
else #invalid_command
  end
end

def invalid_command
  puts "Please enter a valid comment"
  prompt_user 
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  initial_round
  hit? 
  if num > 21
  end_game
end
    
