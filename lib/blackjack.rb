require_relative "card"
require_relative "deck"
require_relative "hand"


deck = Deck.new
player = Hand.new "player", [deck.draw!, deck.draw!]
computer = Hand.new "computer", [deck.draw!, deck.draw!]

def greet
  #say some stuff
  puts "hi"
end

def play_game
  greet

  #display starting hands to player


  #player takes turn
    #loop
      #display current hand value (involves calculating)
      #if player has 21 -> they just win (involves calculating)
      #prompt player action
      #go bust? -> just lose (calculating)

  #computer takes turn
      
end
