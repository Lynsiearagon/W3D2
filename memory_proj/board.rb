# take num of pairs and num of index nums in alphabet 

class Board

    def initialize(n)
        @grid = Array.new(n) {Array.new(n, [])}
        @size = n * n
        @pairs = size / 2
    end 

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, char)
        row, col = pos
        @grid[row][col] = char
    end

    attr_reader :size, :pairs
    
    def place_cards_on_board
        alpha = ("a".."z").to_a
        pairs_on_board = alpha[0...@pairs]

        i = 0
        while i < @size
            row = rand(0...@grid.length)
            col = rand(0...@grid[0].length)
            if @grid[row][col] == []
                @grid[row][col] = pairs_on_board[i % pairs_on_board.length]
                i += 1
            end
        end 

    end

    def won?
        @grid.each do |row|
            row.each do |pos| 
                return false if pos == [] 
            end
        end
        true
    end
                    
    def reveal(pos)
        guessed_pos = self[pos]
        
        if Card.face_down?(pos)
            return guessed_pos
        end 
    end

end

# test_board = Board.new(10)
# puts test_board.place_cards_on_board
# print test_board.grid