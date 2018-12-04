require "byebug"
# module Sliding

# DIAGONAL = [
#     [-1,-1],
#     [-1,1],
#     [1,-1],
#     [1, 1]
# ]

# HORIZONTAL = [
#     [-1,0],
#     [0,-1],
#     [0, 1],
#     [1, 0]
# ]

#     def diagonal_dir
#         DIAGONAL
#     end 

#     def horizontal_dir
#         HORIZONTAL
#     end 
    

#     def grow_unblocked_moves(start, direction)
        
#         moves = [start]
#         new_move = []
#         until new_move.any? { |num| num > 7 || num < 0 }
#             moves << new_move unless new_move.empty?
#             new_move = direction.map.with_index { |ele, i| ele + moves[-1][i] }
#         end 
#         moves
#     end 




#     def move(piece, start)
#         case piece.direction
#         when diagonal 
#             movement = DIAGONAL
#         when horizontal
#             movement = HORIZONTAL
#         when horizontal && diagonal
#             movement = (HORIZONTAL + DIAGONAL)
#         end

#         paths = []
#         movement.each do |dir|
#             paths << grow_unblocked_moves(start, dir)
#         end 
#         paths
#     end 
# end 

def grow_unblocked_moves(start, direction)
    # debugger
    moves = [start]
    new_move = []
    until new_move.any? { |num| num > 7 || num < 0 }
        moves << new_move unless new_move.empty?
        new_move = direction.map.with_index { |ele, i| ele + moves[-1][i] }
    end 
    moves
end 


p grow_unblocked_moves([7,7],[-1,0])
