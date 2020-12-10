module Stepable


  def moves
    pos = @pos
    if symbol == :N
      possible_moves = []
      moves = [[-1, -2], [-2, -1], [-2, 1], [-1, 2], [1, 2], [1, -2], [2, -1], [2, 1]]
      moves.each do |move|
        move_pos = [move[0] + pos[0], move[1] + pos[1]]
        #[-1, -2] [0, 0] move[0] + pos[0]       move[1] + pos[1]
        if (move_pos[0] >= 0 && move_pos[0]) < 8 && (move_pos[1] >= 0 && move_pos[1] < 8)
          if 
        end

      end
      possible_moves
    end
  end
  private
  def move_diffs

  end
end
possible_moves.push(move_pos)

      unblocked_moves = []
        current_pos = self.pos
        while true
            current_pos = [current_pos[0]+dx, current_pos[1]+dy]
            if !((current_pos[0] >= 0 && current_pos[0] <= 7) && (current_pos[1] >= 0 && current_pos[1] <= 7))
                return unblocked_moves
            end
            # debugger
            if !@board[current_pos].empty?
                if @board[current_pos].color != self.color
                    unblocked_moves << current_pos 
                    break
                else
                    break
                end
            else
                unblocked_moves << current_pos
            end

        end
        unblocked_moves
    end
