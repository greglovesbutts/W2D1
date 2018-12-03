require_relative "piece"
class Board 
    attr_reader :board

    def initialize 
        @board = Array.new(8) { Array.new(8) }
        first_two_rows = [0,1,6,7]
        @board.each_index do |i| 
            if first_two_rows.include?(i)
                @board[i] = @board[i].map { |space| Piece.new} 
            end
        end  
    end
    def move_piece(start_pos, end_pos)
        start_row, start_col = start_pos
        end_row, end_col = end_pos
        potential_piece = self.board[start_row][start_col]
        if potential_piece.is_a?(Piece) && end_pos.all?{|place| place.between?(0,7)}
            self.board[end_row][end_col] = potential_piece
            self.board[start_row][start_col] = nil
        end
    end

    def [](pos)
        x, y = pos
        self.board[x][y] 
    end 
end 

# board = Board.new
# p board.board