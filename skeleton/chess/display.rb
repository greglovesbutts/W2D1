require "byebug"
require_relative 'board'
require_relative 'cursor'
require 'colorize'

class Display
    attr_reader :board, :cursor

    def initialize(board)
        @board = board
        @cursor = Cursor.new([0, 0], board)
    end 

    def render 
        
        cursor_pos = self.cursor.cursor_pos
        # debugger
        board = self.board.board
        all_rows = []
        board.each.with_index do |row, i1|
            row_array = []
            row.each.with_index do |piece, i2|
                if [i1, i2] == cursor_pos
                    row_array << piece.to_s.colorize(:red)
                else
                    row_array << piece.to_s
                end
            end
            all_rows << row_array
        end
        all_rows.each do |row|
            puts "#{row[0]}  #{row[1]}  #{row[2]}  #{row[3]}  #{row[4]}  #{row[5]}  #{row[6]}  #{row[7]}"
        end
        return nil
    end
end 

board = Board.new
display = Display.new(board)

# def pseudo_cursor(display)
#    i = 0
#    while i < 5
#     system("clear")
#     display.render
#     display.cursor.get_input
#     i+=1
#    end
# end

# pseudo_cursor(display)
display.render
display.board.move_piece([0,0],[4,0])
puts "______________"
display.render