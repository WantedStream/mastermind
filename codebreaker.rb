
class CodeBreaker
    
    def initialize(board,player_or_computer)
        @board=board
        @type=player_or_computer
    end
    
    def play(row)
        index=0
        loop do

        

            @board.print_board
        if(@type=="player")
            
        

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

        else
            index+=1
            if(row==1)
                color=@board.colors[(@board.colors.size*rand).floor]
            else
                currentrow=@board.gameArr[row-1]
                lastrow=@board.gameArr[row-2]
                

                 
                currentIndex=index-1
                    loop do 

                        color=@board.colors[(@board.colors.size*rand).floor]
                        if(@board.hints[currentIndex]=="red")
                            if(lastrow[currentIndex]==color)
                                break
                            end
                            
                        elsif(@board.hints[currentIndex]=="white")
                            if(lastrow.drop(currentIndex).include?(color))
                                break
                            end
                            
                        else
                            color=@board.colors[(@board.colors.size*rand).floor]
                            break
                        end
                        
                    end
                    
                       
                    
                          
               
            end
            
            
        end

        
            @board.place_value(index,color)
            
        


            break if(@board.row_full?)
       
            

        end    
        

        
    end

end