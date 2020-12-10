require_relative "piece"
require_relative "slideable"


require "byebug"

class Rook < Piece
  
  include Slideable

  def symbol 
    return :R
  end

  private 
  def move_dirs
    return "horizontal"
  end
end

