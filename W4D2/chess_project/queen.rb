require_relative "piece"
require_relative "slideable"


class Queen < Piece
  
  include Slideable
 
  def symbol 
    return :Q
  end
  private 
  def move_dirs
    return "horizontal and diagonal"
  end
end
