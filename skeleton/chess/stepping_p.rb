module SteppingPiece

    def move(start, moves)
        array = []

        moves.each do |move| 
            array << move.map.with_index { |ele, i| ele + start[i] }
        end 

        array
    end
end





    # p move([2,2], [[0,1], [0,-1]])