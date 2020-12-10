require "byebug"
module Stepable


  def moves
    pos = @pos
    if self.symbol == :N
      possible_moves = []
      moves = [[-1, -2], [-2, -1], [-2, 1], [-1, 2], [1, 2], [1, -2], [2, -1], [2, 1]]
      moves.each do |move|
        move_pos = [move[0] + pos[0], move[1] + pos[1]]
        #[-1, -2] [0, 0] move[0] + pos[0]       move[1] + pos[1]
        if (move_pos[0] >= 0 && move_pos[0] < 8) && (move_pos[1] >= 0 && move_pos[1] < 8)
          if !@board[move_pos].empty? 
            if @board[move_pos].color != self.color
              possible_moves << move_pos
            end  
          else
            possible_moves << move_pos 
          end
        end
      end
      
      return possible_moves
    end

    if self.symbol == :K
      possible_moves = []
      moves = [[0, -1],[0, 1],[-1, 0], [1, 0], [1, 1], [-1, 1], [-1,-1], [1, -1]]
      moves.each do |move|
        move_pos = [move[0] + pos[0], move[1] + pos[1]]
        #[-1, -2] [0, 0] move[0] + pos[0]       move[1] + pos[1]
        if (move_pos[0] >= 0 && move_pos[0]< 8) && (move_pos[1] >= 0 && move_pos[1] < 8)
          if !@board[move_pos].empty? 
            if @board[move_pos].color != self.color
              possible_moves << move_pos
            end  
          else
            possible_moves << move_pos 
          end
        end
      end
      return possible_moves
    end
  end

  private
  def move_diffs

  end
end
