class Game
  
  attr_accessor :board, :player_1, :player_2
  
  def initialize(player_1 = Players::Human.new("X"), player_2 = Players::Human.new("O"), board = Board.new)
    @board = board
    @player_1 = player_1
    @player_2 = player_2
  end 
  
  def current_player
    if @board.turn_count % 2 == 0
      player_1
    else
      player_2
    end
  end
  
  WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
  ]
  
<<<<<<< HEAD
=======
  def won?
     WIN_COMBINATIONS.find do |win|
        @board.cells[win[0]] == @board.cells[win[1]] &&
        @board.cells[win[1]] == @board.cells[win[2]] &&
        @board.taken?(win[0]+1)
      end
  end

  def draw?
    @board.full? && !won?
  end
  
  def over?
    won? || draw? || @board.full?
  end
  
   def winner
    if winning_combo = won?
      @winner = @board.cells[winning_combo.first]
    end
  end
>>>>>>> 150f6c24e2883c7d6f3eef1e8b8acf12b87fdd89
  
  def turn
    puts "Please enter 1-9:"
    player = current_player
    current_move = player.move(@board)
    if !@board.valid_move?(current_move)
      turn
    else
      puts "Turn: #{@board.turn_count+1}\n\n"
      @board.update(current_move, player)
      @board.display
<<<<<<< HEAD
      puts " "
=======
      puts "#{player.token} moved #{current_move}"
      puts "\n"
>>>>>>> 150f6c24e2883c7d6f3eef1e8b8acf12b87fdd89
    end
  end
  
  def play
    while !over?
    turn
  end
    if won?
      puts "Congratulations #{winner}!"
    elsif draw?
      puts "Cat's Game!"
    end
  end

<<<<<<< HEAD
  def won?
     WIN_COMBINATIONS.find do |win|
        @board.cells[win[0]] == @board.cells[win[1]] &&
        @board.cells[win[1]] == @board.cells[win[2]] &&
        @board.taken?(win[0]+1)
      end
  end

  def draw?
    @board.full? && !won?
  end
  
  def over?
    won? || draw? || @board.full?
  end
  
  def winner
    if winning_combo = won?
      @winner = @board.cells[winning_combo.first]
    end
  end 
  
=======
  def call
    
  end
  
>>>>>>> 150f6c24e2883c7d6f3eef1e8b8acf12b87fdd89
end



