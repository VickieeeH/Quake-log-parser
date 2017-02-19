require 'pry'
require_relative '../app/helpers/log_processer'

class Quake
  def self.read_file(file='./log/games.log')
     log_lines = []
     file = File.open(file, 'r')
     file.each_line { |row| log_lines << row }
     log_lines
   end

   def self.read_game(file = './log/games.log')
     log_lines = Quake.read_file(file)
   end
end
