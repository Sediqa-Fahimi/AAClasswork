module Stepable


  def moves
    pos = @pos
    if symbol == :k
      possible_moves = []
      moves = [[-1, -2], [-2, -1], [-2, 1], [-1, 2], [1, 2], [1, -2], [2, -1], [2, 1]]
      moves.each do |move|
        move_pos = [move[0] + pos[0], move[1] + pos[1]]
        #[-1, -2] [0, 0] move[0] + pos[0]       move[1] + pos[1]
        if move_pos[0] >= 0 && move_pos[0] < 8 && move_pos[1] >= 0 && move_pos[1] < 8
          #@considered_positions.push(move_pos)
          possible_moves.push(move_pos)
        end
      end
      possible_moves
    end
  end

  private

  def move_diffs

  end

end


def self.valid_moves(pos)
    possible_moves = []
    moves = [[-1, -2], [-2, -1], [-2, 1], [-1, 2], [1, 2], [1, -2], [2, -1], [2, 1]]
    moves.each do |move|
      move_pos = [move[0] + pos[0], move[1] + pos[1]]
      #[-1, -2] [0, 0] move[0] + pos[0]       move[1] + pos[1]
      if move_pos[0] >= 0 && move_pos[0] < 8 && move_pos[1] >= 0 && move_pos[1] < 8
        #@considered_positions.push(move_pos)
        possible_moves.push(move_pos)
      end
    end
    possible_moves
  end