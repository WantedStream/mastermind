
class CodeBreaker
    
    def initialize(board,player_or_computer)
        @board=board
        
    end
    
    def play

        loop do

        @board.print_board

        index=0
        loop do 
            puts "enter index to place (1-4)"
            index=gets.chomp.to_i
            break if (!(index>4||index<1))
            puts "invalid index!"
        end 

        color="none"
        loop do
        puts "enter color from one of the following:" 
        p @board.colors
        color=gets.chomp
        break if(@board.colors.include?(color))
        puts "invalid color!"
        end

       

        
            @board.place_value(index,color)
            
        


            break if(@board.row_full?)
       
            

        end    
        

        
    end

end