class Game
  attr_accessor :player, :p_choice, :c_choice

  def initialize
    puts "**********Play Paper Rock Scissors!***********"
    print "**** Print your name, please =>>"
    @player = gets.chomp.upcase
    p_pick
  end
  def p_pick
    puts "**** #{player}, please choose one: (P/R/S) ****"
    @p_choice = gets.chomp.upcase
    if p_choice && ["P", "R", "S"].include?(p_choice)
      c_pick
    else
      puts "!!!*** You didn't print correct letter. Please try one more time. ***!!!"
      p_pick
    end
  end

  def c_pick
    ran = rand(3)
    if ran == 0
      @c_choice = "P"
    elsif ran == 1
      @c_choice = "R"
    else
      @c_choice = "S"
    end
    winner
  end

  def winner
    puts "---- You picked #{p_choice} ----"
    puts "---- Computer picked #{c_choice} ----"
    case p_choice
    when "P"
      puts "It's a tie" if c_choice == "P"
      puts "Paper wraps Rock! #{player}, you won!" if c_choice == "R"
      puts "Scissors cuts Paper! Computer won!" if c_choice == "S"
    when "R"
      puts "Paper wraps Rock! Computer won!" if c_choice == "P"
      puts "It's a tie" if c_choice == "R"
      puts "Rock destroys Scissors! #{player}, you won!" if c_choice == "S"
    when "S"
      puts "Scissors cuts Paper! #{player}, you won!" if c_choice == "P"
      puts "Rock destroys Scissors! Computer won!" if c_choice == "R"
      puts "It's a tie" if c_choice == "S"
    end
  end_of_game
end

def end_of_game
  puts "**** Play again? (Y/N) ****"
  new_game=gets.chomp.upcase
  if new_game == "Y"
    initializer
  elsif new_game == "N"
    puts "Game over."
  else
    puts "!!!*** You didn't print correct letter. Please, try again. ***!!!"
    end_of_game
  end
end

end


Game.new
