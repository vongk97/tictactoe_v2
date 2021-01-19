require_relative "board.rb"

class Game
    def initialize
        board = Board.new
    end

    def play
        set_player_names
    end

    def set_player_names
        puts "TIC TAC TOE!!! \n\n"
        print "Enter P1 Name: "
        p1 = gets.chomp
        print "Enter P2 Name: "
        p2 = gets.chomp
    end
end