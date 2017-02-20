require 'pry'
require_relative '../app/helpers/log_processer'
require_relative '../app/models/game'


class Quake
   def self.read_file(file='./log/games.log')
     log_lines = []
     file = File.open(file, 'r')
     file.each_line { |row| log_lines << row }
     log_lines
   end

   def self.read_game(file = './log/games.log')
     log_lines = Quake.read_file(file)

     games = []
     init_game_line = 0

     log_lines.each_with_index do |log_line, index|
       if LogProcesser.game_start_row?(log_line)
          init_game_line = index
       elsif LogProcesser.game_end_row?(log_line)
          game_ends_line = index - init_game_line.to_i + 1
          games << (Game.new log_lines[init_game_line, game_ends_line], "game_#{games.count+1}") unless init_game_line.nil?
          init_game_line = nil
       end
     end

    games
   end
end
