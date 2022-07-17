# Lets people to play game tic tac toe TTT
class Tic
  def initialize
    @board = Board.new
    @turn = 0
    @toe = false
  end
    
  def play
    @board.write
    puts "Enter Row Player #{@turn % 2 + 1}"
    row = gets.chomp.to_i
    puts "Enter Column Player #{@turn % 2 + 1}"
    col = gets.chomp.to_i
    if(@turn % 2 == 0)
      @board.set(row,col, "x")
    else
      @board.set(row, col, "o")
    end
    if (@board.check)
      @toe = @board.check()
      puts "Player #{@turn % 2 + 1} wins"
      @board.clean
    end
      @turn += 1
  end

  def game
    @toe = false
    until @toe
      play
    end
  end

  def write
    p @board
  end
end

class Board

  def initialize()
    @board = [["", "", ""],["", "", ""],["", "", ""]]
  end

  def write
      p @board
  end

  def get(row,col)
      return @board[row][col]
  end

  def set(row,col,value)
    if(@board[row][col] == "")
      @board[row][col] = value
    else
      puts "No cheater"
    end    
  end

  def check()
    if(!@board.include?(""))
        puts "tie"
        result = true
        end
        result = false;
        3.times { |c|
            if (@board[0][c] == @board[1][c] && @board[1][c] == @board[2][c] && @board[0][c] != "")
                result = true
            end
        }
        3.times{ |r|
            if (@board[r][0] == @board[r][1] && @board[r][1] == @board[r][2] && @board[r][0] != "")
                result = true
            end
        }
        result
    end

  def clean()
    @board = [["", "", ""],["", "", ""],["", "", ""]]
  end
end