require_relative 'player'

class Game
  attr_accessor :player_1_turn, :current_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
    @player_1_turn = true
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack
    if @player_1_turn == true
      @player_1_turn = false
      @current_turn = player_2
      player_2.reduce_points
    else
      @player_1_turn = true
      @current_turn = player_1
      player_1.reduce_points
    end
  end
end
