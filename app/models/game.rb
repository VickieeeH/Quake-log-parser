require_relative '../helpers/log_processer'


class Game
  attr_accessor :game_number, :player, :start_time, :end_time, :kills, :total_kills

  def initialize(log_line, name = 'game_1')
  end

end
