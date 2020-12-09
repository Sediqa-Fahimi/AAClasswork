class Piece

  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
  end

  # def to_s
  # end

  def empty?
    return true if @board[@pos].empty?
    false
  end

end

class Rook < Piece
  

  # def initialize(color,board,pos)
  #   super(color,board,pos)
  # end
  def symbol 
    return :R
  end
  private 
  def move_dirs
    return "horizontal"
  end
end

class Bishop < Piece
  

  # def initialize(color,board,pos)
  #   super(color,board,pos)
  # end
  def symbol 
    return :B
  end
  private 
  def move_dirs
    return "diagonal"
  end
end

class Queen < Piece
  

  # def initialize(color,board,pos)
  #   super(color,board,pos)
  # end
  def symbol 
    return :Q
  end
  private 
  def move_dirs
    return "horizontal and diagonal"
  end
end