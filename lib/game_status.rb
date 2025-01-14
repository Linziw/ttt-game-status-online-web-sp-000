
require "pry"
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
   ]


def won?(board)
  WIN_COMBINATIONS.find do |combo|
    position_taken?(board,combo[0]) && board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]]
end
end

def full?(board)
  if board.include?(" ")
    return false
  else 
    return true
end
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  if won?(board) == nil
    return nil
  else
    board[won?(board)[0]]
end
end
