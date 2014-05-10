class RockPaperScissors
  attr_accessor :result

  def initialize(player_move, comp_move)
    @result = player_move.throw_against(comp_move)
  end

end