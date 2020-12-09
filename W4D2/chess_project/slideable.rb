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
        dirs = 
        while unblocked_moves.length < 8
            if move_dirs == "horizontal"
                HORIZONTAL_DIRS.each do |dir|
                    dir[0] += dx 
                    dir[1] += dy
                    unblocked_moves << dir
                end
            end
        end

        unblocked_moves
    end

end

HORIZONTAL_DIRS = [[-1,0],[0,1],[1,0],[0,-1]]
# move_dirs = "horizontal"

def grow_unblocked_moves_in_dir(dx, dy)
    unblocked_moves = []

    #current_pos 
    # add dx, dy to current_pos until:
    # position we are trying to move is not valid (end of the board,our of range)
    # there's a piece on the position we are trying to move

    #start_position = [5,5]
    #next_position = [4,5] 
    #next_position = [4 -1 , 5-0] = [3,5] , stop here
    #next_position = [2,5] .... [0, 5]
    # [-1,5] = not valid stop here

    # pos = [5,5]
    # pair = [pos[0]+dx, pos[1]+dy]

    # while (pos[0] >= 0 && pos[0] <= 7) && (pos[1] >= 0 && pos[1] <= 7)
    #     # pos[0] += dx
    #     # pos[1] += dy 
    #     # p pos
        
    #     unblocked_moves << pair
    #     pair = [pos[0]+dx, pos[1]+dy]
    #     pos = pair
    # end

    pos = [5,5]
    while true
        pair = [pos[0]+dx, pos[1]+dy]
        pos = pair
        if !((pos[0] >= 0 && pos[0] <= 7) && (pos[1] >= 0 && pos[1] <= 7))
            return unblocked_moves
        end
        unblocked_moves << pair

    end


    # while unblocked_moves.length < 7  
        
    #     unblocked_moves << [dx+1, dy+1]
    # end

    unblocked_moves
end

p grow_unblocked_moves_in_dir(-1,0)

