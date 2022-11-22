require relative "./board.rb"
require relative "./game.rb"

# create grid (2d array, unique values)
# grid = square or n * n
# take in a number representing amount of pairs
# call rand method on alpha chars to create pairs

class Card

    attr_accessor :face_down 

    def initialize(char)
        @face_down = true
    end



    def face_down?(pos)
        if @board[pos[0]][pos[1]] == []
            return true
        else
            return false
        end
    end


    #if face_down at firstpos on @grid = false && next chosen pos is == first pos keep revealed

end