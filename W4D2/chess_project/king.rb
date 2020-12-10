require_relative "piece"
require_relative "stepable"


require "byebug"

class King < Piece
  
  include Stepable

  def symbol 
    return :K
  end

  private 
#   def move_diffs
    
#   end
end
