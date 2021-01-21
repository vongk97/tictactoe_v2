
class Board

    # class variable which represents cells on 3x3 grid
    @cells

    @@VICTORY_SETS = [
        [0,1,2], [3,4,5], [6,7,8],
        [0,3,6], [1,4,7], [2,5,8],
        [0,4,8], [2,4,6]
    ]

    def initialize
        @cells = [1,2,3,4,5,6,7,8,9]
    end

    # each cell corresponds to an index in @@cells array.
    # User input will override default number values
    def show_board
        puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
        puts "-----------"
        puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
        puts "-----------"
        puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
    end

    def cells
        @cells
    end
    
    def cells=(cells)
        @cells = cells 
    end

    
end