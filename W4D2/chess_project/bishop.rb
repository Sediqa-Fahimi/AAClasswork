require_relative "piece"

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