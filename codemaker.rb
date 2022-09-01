class CodeMaker
    attr_accessor :hint_colors
    attr_accessor :code
    
    def initialize(board,player_or_computer)
        @board=board
        @code=Array.new()
       
        puts @code

        @type = player_or_computer.chomp
        set_code()
        
    end



    def set_code()

        puts "enter code:"
     for x in 1..4
        
        
        if(@type=="codemaker")
            
        loop do
        puts "enter color from one of the following:" 
        p @board.colors
        color=gets.chomp
        break if(@board.colors.include?(color))
        puts "invalid color!"
        end
        else
            color=@board.colors[(@board.colors.size*rand).floor]

        end
    
        @code.push(color)
        
     end
     puts "code is done"
     puts @code
     return @code
     puts @code
    end

    def hint(row)

        

            
        print @board.hints
            index=1
            for x in 1..4
               
                index=x
              
             
            if(@type=="codemaker")    
            color="none"
            loop do
            puts "enter color from one of the following:" 
            p @board.hint_colors
            color=gets.chomp
            break if(@board.hint_colors.include?(color))
            puts "invalid color!"
            end
            else
                
                if(@code.include?(row[x-1]))
                    color="white"
                    if(@code[x-1]==row[x-1])
                        color="red"
                    end
                else
                    color="none"
                end   
                
                #color=@board.hint_colors[(@board.hint_colors.size*rand).floor]

            end
            
           
            
            
                @board.set_hints(index,color)
                if(@type=="codemaker")
                puts @board.hints
                end
          
                
    
        
            end    
            
    end
end