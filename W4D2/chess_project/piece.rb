

class Piece
  attr_reader :pos, :board, :color
  def initialize(color, board, pos)
    # debugger
    @color = color
    @board = board
    @pos = pos #1D array to hold the current position
  end

  def to_s
  end

  def empty?
    # debugger
    false
  end

  def valid_moves
    #filters the moves from the rook/bishop moves method
  end

end


