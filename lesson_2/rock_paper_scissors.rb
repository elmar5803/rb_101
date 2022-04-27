VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock' && second == 'scissors')||
  (first == 'rock' && second == 'lizard')||
  (first == 'paper' && second == 'spock')||
  (first == 'paper' && second == 'rock')||
  (first == 'scissors' && second == 'lizard')||
  (first == 'scissors' && second == 'paper')||
  (first == 'spock' && second == 'rock')||
  (first == 'spock' && second == 'scissors')||
  (first == 'lizard' && second == 'spock')||
  (first == 'lizard' && second == 'paper')
end

def print_results (user, computer)
  if win?(user, computer)
    prompt "You won!"
  elsif win?(computer, user)
    prompt "You lose!"
  else
    prompt "It's a tie!"
  end
end

loop do
  choice = ' '
  loop do
    prompt "Choose one: #{VALID_CHOICES.join', '}"
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt "That's not a valid choice."
    end
  end

    computer_choice = VALID_CHOICES.sample

  puts "You chose #{choice}, computer chose #{computer_choice}"

  print_results(choice, computer_choice)

  prompt "Do you want to play again y/n?"
  answer = gets.chomp
  break unless answer.downcase.start_with? 'y'
end
prompt "Thank you for playing, good bye!"