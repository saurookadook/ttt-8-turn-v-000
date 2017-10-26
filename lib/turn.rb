def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = "#{user_input}".to_i - 1
end

def move(board, index, char = "X")
  board[index] = char
end

def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end


def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_to_index(user_input)
  if valid_move?(board, input_to_index(user_input)) == true
    move(board, input_to_index(user_input), char = "X")
    display_board(board)
  else
    until valid_move?(board, input_to_index(user_input)) == true
      puts "Invalid move"
      turn(board)
    end
  end
end
