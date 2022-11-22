require relative "./board.rb"
require relative "./game.rb"

# create grid (2d array, unique values)
# grid = square or n * n
# take in a number representing amount of pairs
# call rand method on alpha chars to create pairs

class Card

    def initialize()
        @face_down = face_down
    end

    def face_down?(pos)
        if @board[pos[0]][pos[1]] == []
            return true
        else
            return false
        end
    end


end