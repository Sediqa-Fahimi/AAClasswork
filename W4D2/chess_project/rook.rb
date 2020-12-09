require_relative "piece"

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