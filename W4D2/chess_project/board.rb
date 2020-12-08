require_relative "nullpiece"
require_relative "piece"
require "byebug"

class Board

  def initialize
    @null_piece = NullPiece.instance
    @board = Array.new(8) {Array.new(8, @null_piece)}
  end
  
  def [](pos)
    row, col = pos
    @board[row][col]
  end
  
  def []=(pos,val)
    # debugger
    row, col = pos
    @board[row][col] = val
  end
  
  def move_piece(start_pos, end_pos) #add color as an argument later
    raise "There's no piece at #{start_pos}" if self[start_pos].nil? 
    #1) when the end_pos is not empty
    #2) When the end_pos is not a valid position
    raise "#{end_pos} is not empty" if !self[end_pos].empty?
    # raise "#{end_pos} is not valid" if !valid_pos?(end_pos)

    self[end_pos] = self[start_pos]
    self[start_pos] = @null_piece
    self[end_pos] 
  end

  # def valid_pos?(pos)

  # end

end

