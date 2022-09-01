
class Board
    attr_accessor :hints
    attr_accessor :colors
    attr_accessor :hint_colors
    attr_accessor :gameArr
    def initialize(colors,hint_colors)
        @gameArr=Array.new()
        @turns=0
        @currentrow=0
        @colors = colors
        @hint_colors = hint_colors
        @hints=["o","o","o","o"]
        @lasthint=Array.new
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
    
    def hints_full?
        !@hints[@currentrow].include?("o")

    end
    def print_hints
        p @hints[0]+"|"+@hints[1]
        p @hints[2]+"|"+@hints[3]
        return @hints
    end

    def set_hints(pos,color)
        @hints[pos-1]=color
    end
    
    def reset_hints
        @last_hint=@hints
        @hints==["o","o","o","o"]

    end
end
