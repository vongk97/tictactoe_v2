require_relative "board.rb"

class Game
    @choice # user input for choosing a cell
    @current_player # alternates b/w P1 and P2
    @current_marker # alternates b/w 'X' and 'O'
    @is_game_over # true ends the game
    @is_draw # true confirms a stalemate

    def initialize
        @board = Board.new
        @choice = ""
        @current_player = "P1"
        @current_marker = 'X'
        @is_game_over = false
        @is_draw = false
    end

    def play
        puts "Welcome to Tic Tac Toe!"
        puts "Player One(P1) uses 'X'"
        puts "Player Two(P2) uses 'O'"
        # each player makes a move until win/tie, starting with p1

        while(@is_game_over == false)
            @board.show_board
            place_marker(@current_player)
            # check for winning combination
            check_winner
            if(@is_game_over == false)
                switch_turn
            end

        end
        announce_winner
        
    end

    def place_marker(player)
        valid_input = false
        while(valid_input == false)
            puts "#{player}'s turn. Enter a value from 1-9 to place your marker."
            # confirm valid input
            @choice = gets.chomp

            #check number 1-9 
            if( @choice != "1" && @choice != "2" && @choice != "3" &&
                @choice != "4" && @choice != "5" && @choice != "6" && 
                @choice != "7" && @choice != "8" && @choice != "9" )

                puts "Invalid input. Try again."
                valid_input = false
            #check if cell is available
            elsif(@board.cells[@choice.to_i - 1] != @choice.to_i)
                puts "Cell occupied. Choose another cell."
                valid_input = false
            else
                # update cell
                @board.cells[@choice.to_i - 1] = @current_marker
                valid_input = true
            end




        end

    end

    def switch_turn
        if(@current_player == "P1")
            @current_player = "P2"
            @current_marker = 'O'
        elsif(@current_player == "P2")
            @current_player = "P1"
            @current_marker = 'X'
        end
    end

    def check_winner
        # P1 winning combinations
        if( (@board.cells[0] == 'X' && @board.cells[1] == 'X' &&  @board.cells[2] == 'X') ||
            (@board.cells[3] == 'X' && @board.cells[4] == 'X' &&  @board.cells[5] == 'X') ||
            (@board.cells[6] == 'X' && @board.cells[7] == 'X' &&  @board.cells[8] == 'X') ||
            (@board.cells[0] == 'X' && @board.cells[3] == 'X' &&  @board.cells[6] == 'X') ||
            (@board.cells[1] == 'X' && @board.cells[4] == 'X' &&  @board.cells[7] == 'X') ||
            (@board.cells[2] == 'X' && @board.cells[5] == 'X' &&  @board.cells[8] == 'X') ||
            (@board.cells[0] == 'X' && @board.cells[4] == 'X' &&  @board.cells[8] == 'X') ||
            (@board.cells[2] == 'X' && @board.cells[4] == 'X' &&  @board.cells[6] == 'X') )

            @is_game_over = true

        # P2 winning combinations
        elsif(  (@board.cells[0] == 'O' && @board.cells[1] == 'O' &&  @board.cells[2] == 'O') ||
                (@board.cells[3] == 'O' && @board.cells[4] == 'O' &&  @board.cells[5] == 'O') ||
                (@board.cells[6] == 'O' && @board.cells[7] == 'O' &&  @board.cells[8] == 'O') ||
                (@board.cells[0] == 'O' && @board.cells[3] == 'O' &&  @board.cells[6] == 'O') ||
                (@board.cells[1] == 'O' && @board.cells[4] == 'O' &&  @board.cells[7] == 'O') ||
                (@board.cells[2] == 'O' && @board.cells[5] == 'O' &&  @board.cells[8] == 'O') ||
                (@board.cells[0] == 'O' && @board.cells[4] == 'O' &&  @board.cells[8] == 'O') ||
                (@board.cells[2] == 'O' && @board.cells[4] == 'O' &&  @board.cells[6] == 'O') )

                @is_game_over = true

        # All cells are occupied and no winning combination found
        elsif( @board.cells[0] != 1 && @board.cells[1] != 2 &&  @board.cells[2] != 3 &&
                @board.cells[3] != 4 && @board.cells[4] != 5 &&  @board.cells[5] != 6 &&
                @board.cells[6] != 7 && @board.cells[7] != 8 &&  @board.cells[8] != 9 )

                @is_game_over = true
                @is_draw = true
        end
    end

    def announce_winner
        @board.show_board
        if(@is_draw)
            puts "STALEMATE!!!"
        else
            puts "#{@current_player} wins! Game over"
        end

        puts "Play Again?   Y or N"
        replay = gets.chomp
        while (replay.upcase != "Y" || replay.upcase != "N")
            # rematch
            if(replay.upcase == "Y")
                initialize
                play
            # end game
            elsif(replay.upcase == "N")
                break
            else
                puts "Invalid input."
                puts "Play Again?   Y or N"
                replay = gets.chomp
            end
        end
    end
    
end