require_relative "piece"
require_relative "stepable"


require "byebug"

class Knight < Piece
  
  include Stepable

  def symbol 
    return :N
  end

  private 
#   def move_diffs
    
#   end
end
