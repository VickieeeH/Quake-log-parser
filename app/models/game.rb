class Game < ApplicationRecord
  attr_accessor :game_number, :player, :start_time, :end_time, :kills, :total_kills

  def initialize(log)
  end

end
