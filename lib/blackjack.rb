require_relative "card"
require_relative "deck"
require_relative "hand"

deck = Deck.new
player = Hand.new(deck.deal(2))
computer = Hand.new(deck.deal(2))
player_bust = false
computer_bust = false

puts "Your hand: #{player.show_hand}"
puts "Score: #{player.calculate_hand}"
while true do
  puts "Hit or stand? (h/s)"
  input = STDIN.gets.chomp
  if input == "h"
    player.hit(deck.deal(1))
    puts player.show_hand
    puts "Score: #{player.calculate_hand}"
  elsif input == "s"
    break
  end
  if player.calculate_hand > 21
    puts "Bust!"
    player_bust = true
    sleep(2)
    break
  end
end

puts "Computer's hand: #{computer.show_hand}"
sleep(1)
while true
  if computer.calculate_hand < 17
    computer.hit(deck.deal(1))
    sleep(1)
    puts computer.show_hand
    sleep(1)
  elsif computer.calculate_hand >= 17 && computer.calculate_hand < 22
    puts "Computer score: #{computer.calculate_hand}"
    sleep(2)
    break
  elsif computer.calculate_hand > 21
    puts "Computer busts!"
    computer_bust = true
    sleep(1)
    break
  end
end

if computer_bust
  if player_bust
    puts "Both players bust. It's a draw"
  else
    puts "You win!"
  end
elsif player_bust
  if computer_bust
    puts "Both players bust. It's a draw"
  else
    puts "Computer wins!"
  end
elsif computer.calculate_hand > player.calculate_hand
  puts "Computer wins!"
elsif computer.calculate_hand < player.calculate_hand
  puts "You win!"
elsif computer.calculate_hand == player.calculate_hand
  puts "It's a draw!"
end
