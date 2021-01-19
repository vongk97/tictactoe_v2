require_relative "board.rb"

class Game
    @p1
    @p2
    def initialize
        board = Board.new
    end

    def play
        set_player_names
        place_marker(p1)
        place_marker(p2)
    end

    def place_marker(player)
        puts "#{player} turn. Enter a value from 1-9 to place your marker."
    end

    def set_player_names
        puts "TIC TAC TOE!!! \n\n"
        print "Enter P1 Name: "
        @p1 = gets.chomp
        print "Enter P2 Name: "
        @p2 = gets.chomp
    end
end