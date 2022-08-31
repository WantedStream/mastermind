
class Board
    attr_accessor :colors
    
    def initialize(colors)
        @gameArr=Array.new()
        @turns=0
        @currentrow=0
        @colors = colors
    end

    def make_board(turns)
        @turns=turns
    for x in 1..turns        
        @gameArr.push(["none","none","none","none"])
    end

    end

    def print_board
        puts ""
        puts ""
        for x in 1..@turns
            p @gameArr[x-1]
            
        end
        puts ""
        puts ""
    end

    def made_turn
        @currentrow+=1
    end

    def place_value(index,color)
        @gameArr[@currentrow][index-1]=color
    end

    def row_full?
        !@gameArr[@currentrow].include?("none")
        

    end
end
