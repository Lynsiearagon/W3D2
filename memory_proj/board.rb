# take num of pairs and num of index nums in alphabet 

class Board

    def initialize(pairs)
        @grid = Array.new(pairs) {Array.new(pairs, [])}
        @size = pairs * pairs
        @pairs = pairs
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

end