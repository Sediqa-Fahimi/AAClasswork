require_relative "piece"

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