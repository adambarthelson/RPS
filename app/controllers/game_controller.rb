class GameController < ApplicationController
  def index
  end

  def throw
    @user_move = Move[params[:sign].to_sym]
    @comp_move = Move.random
    @result = RockPaperScissors.new(@user_move, @comp_move).result
  end

end
