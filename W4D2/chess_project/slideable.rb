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
    move_dirs = "horizontal"

    while unblocked_moves.length < 7
        if move_dirs == "horizontal"
            HORIZONTAL_DIRS.each do |dir|
                # p "before: #{dir}"

                dir[0] += dx 
                dir[1] += dy

                # p "After: #{dir}"
                # debugger
                unblocked_moves << dir
            end
        end
    end

    unblocked_moves
end

p grow_unblocked_moves_in_dir(1,1)

