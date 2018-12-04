require_relative "piece"
require_relative "null_piece"
class Board 
    attr_reader :board

    def initialize 
        @board = Array.new(8) { Array.new(8, NullPiece.instance) }
        first_two_rows = [0,1,6,7]
        @board.each_index do |i| 
            if first_two_rows.include?(i)
                board[i].each_index do |i2|
                    board[i][i2] = Piece.new
                end
            end
        end  
    end
    def move_piece(start_pos, end_pos)
        potential_piece = self[start_pos]
        if potential_piece.is_a?(Piece) && end_pos.all?{|place| place.between?(0,7)}
            self[end_pos] = potential_piece    
            self[start_pos] = NullPiece.instance
        end
    end

    def [](pos)
        x, y = pos
        self.board[x][y] 
    end 
    def []=(pos, val)
         x, y = pos
        self.board[x][y] = val
    end 

    def valid_pos?(pos)
       pos.all?{|place| place.between?(0,7)}
    end 
end 
