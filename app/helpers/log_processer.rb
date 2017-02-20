module LogProcesser

  #Game information
  def self.init_game
    /InitGame/
  end

  def self.game_ends
    /--------+/
  end

  def self.time_format
    /(\d)?\d:\d\d/
  end

  def self.game_start_row?(log)
    log =~ LogProcesser.init_game
  end

  def self.game_end_row?(log)
    log =~ LogProcesser.game_ends
  end

end
