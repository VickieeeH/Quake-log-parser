module LogProcesser

  #Game information
  def self.init_game
    /InitGame/
  end

  def self.game_ends
    /ShutdownGame/
  end

  def self.time_format
    /(\d)?\d:\d\d/
  end

  def self.game_start_row(log)
    log =~ LogProcesser.game_start_row
  end

  def self.game_end_row(log)
    log =~ LogProcesser.game_end_row
  end

end
