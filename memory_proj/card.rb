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

    # def place_cards_on_board
    #     alpha = ("a".."z").to_a
    #     pairs_on_board = alpha[0...@pairs * 2]

    #     i = 0
    #     while i < @size
    #         row = rand(0...@grid.length)
    #         col = rand(0...@grid[0].length)
    #         @grid[row][col] = pairs_on_board[i]
    #         i += 1
    #     end 
    # end

end