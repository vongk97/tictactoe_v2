
class Board

    # class variable which represents cells on 3x3 grid
    @cells

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