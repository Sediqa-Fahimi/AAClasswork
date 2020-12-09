require "byebug"

module Slideable

    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves

    end


    private
    HORIZONTAL_DIRS = [[-1,0],[0,1],[1,0],[0,-1]]
    DIAGONAL_DIRS = [[-1,-1],[-1,1],[1,-1],[1,1]]

    def move_dirs

    end

    def grow_unblocked_moves_in_dir(dx, dy)
        unblocked_moves = []
        current_pos = self.pos
        while true
            pair = [current_pos[0]+dx, current_pos[1]+dy]
            current_pos = pair
            if !((current_pos[0] >= 0 && current_pos[0] <= 7) && (current_pos[1] >= 0 && current_pos[1] <= 7))
                return unblocked_moves
            end
            unblocked_moves << pair

        end
        # dirs = 
        # while unblocked_moves.length < 8
        #     if move_dirs == "horizontal"
        #         HORIZONTAL_DIRS.each do |dir|
        #             dir[0] += dx 
        #             dir[1] += dy
        #             unblocked_moves << dir
        #         end
        #     end
        # end

        unblocked_moves
    end

end

HORIZONTAL_DIRS = [[-1,0],[0,1],[1,0],[0,-1]]
# move_dirs = "horizontal"

def grow_unblocked_moves_in_dir(dx, dy)
    unblocked_moves = []

    pos = [5,5]
    while true
        pair = [pos[0]+dx, pos[1]+dy]
        pos = pair
        if !((pos[0] >= 0 && pos[0] <= 7) && (pos[1] >= 0 && pos[1] <= 7))
            return unblocked_moves
        end
        unblocked_moves << pair

    end

    unblocked_moves
end

p grow_unblocked_moves_in_dir(-1,0)

