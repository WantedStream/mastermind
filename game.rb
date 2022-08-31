require_relative 'board.rb'
require_relative 'codebreaker.rb'

class Game
    
    def initialize()
        @board= Board.new(["blue","red","green","yellow","purple","orange"])
        puts "enter turns"
        @turns = gets.chomp.to_i
        @board.make_board(@turns)
        
        puts "enter type (codebreaker/codemaker)"
        type = gets.chomp
        
        @codebreaker = CodeBreaker.new(@board,type)

        for x in 1..@turns
            
            @codebreaker.play
            @board.made_turn
        end
    end

    
end

Game.new()