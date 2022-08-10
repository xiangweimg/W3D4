class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @seq = []
    @sequence_length = 1
    @game_over = false
  end

  def play
    until @game_over
      self.take_turn
    end
    self.game_over_message
    self.reset_game
  end

  def take_turn
    self.show_sequence
    self.require_sequence
    unless @game_over
      self.round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    self.add_random_color
    @seq.each do |color|
     p color
    end
  end

  def require_sequence
    @seq.each do |color|
      if color[0] != user_color
        @game_over = true
        break
      end
    end
  end

  def add_random_color
    @seq << COLORS.shuffle(0)
  end

  def round_success_message
    "you win"
  end

  def game_over_message
    "you lose"
  end

  def reset_game
    @sequence_length = 1
    @seq = []
    @game_over = false
  end
end
