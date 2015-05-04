
class Play
  def call
    puts Game::CONST
    
  end
end


class Game
  CONST = "This is const"

end

g=Play.new
g.call
