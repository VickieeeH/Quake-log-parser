require 'json'
require_relative '../helpers/log_processer'


class Game
  attr_accessor :game_number, :player, :start_time, :end_time, :kills, :total_kills, :kills_by_means

  def initialize(log_line, game_number = 'game_1')
  end


end
