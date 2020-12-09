class Piece

  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos #1D array to hold the current position
  end

  # def to_s
  # end

  def empty?
    return true if @board[@pos].empty?
    false
  end

  def valid_moves
    #filters the moves from the rook/bishop moves method
  end

end




