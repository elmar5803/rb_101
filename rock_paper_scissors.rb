VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock' && second == 'scissors')||

def print_results (user, computer)
  if (user == 'rock' && computer == 'scissors') ||
     (user == 'paper' && computer == 'rock') ||
     (user == 'scissors' && computer == 'paper')
    prompt "You won!"
  elsif (user == 'rock' && computer == 'paper') ||
        (user == 'paper' && computer == 'scissors') ||
        (user == 'scissors' && computer == 'rock')
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