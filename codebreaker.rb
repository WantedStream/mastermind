
class CodeBreaker
    
    def initialize(board,player_or_computer)
        @board=board
        
    end
    
    def play
        @board.print_board
        puts "enter index to place (1-4)"
        index=gets.chomp.to_i
        if(index>4||index<1)
            puts "invalid index!"
            play()
        end

        puts "enter color from one of the following:" 
        p @board.colors

        color=gets.chomp

        unless(@board.colors.include?(color))
            puts "invalid color! please put a color from the list"
            play()
        end


        @board.place_value(index,color)

        if(!@board.row_full?)
            play()
           
        end
            puts "row end"
            
        

        
    end

end