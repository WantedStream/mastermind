require_relative 'board.rb'
require_relative 'codebreaker.rb'
require_relative 'codemaker.rb'

class Game
    
    def initialize()
        @board= Board.new(["blue","red","green","yellow","purple","orange"],["red","white","none"])
        puts "enter turns"
        @turns = gets.chomp.to_i
        @board.make_board(@turns)
        
        puts "enter type for codebreaker (player/computer)"
        typeB = gets.chomp
        puts "enter type for codemaker (player/computer)"
        typeM = gets.chomp
        @codebreaker = CodeBreaker.new(@board,typeB)
        @codemaker = CodeMaker.new(@board,typeM)
        for x in 1..@turns
            
            @codebreaker.play
            @board.made_turn
            
            if(@codemaker.code==@board.gameArr[x-1])
                puts "codebreaker won! password is "
                p @codemaker.code
                exit(0)
            end
            @codemaker.hint(@board.gameArr[x-1])
            puts ""
            @board.print_hints
            @board.reset_hints
            
        end
        puts "codemaker won! password is"
        p @codemaker.code
    end

    
end

Game.new()