require "singleton"
class Piece
  def initialize

  end

  def to_s
    if self.is_a?(NullPiece)
      "   "
    else 
      " * "
    end
  end
end

class Rook < Piece
  def initialize
  end
end

class Pawn < Piece
  def initialize
  end
end

class Queen < Piece
  def initialize
  end
end

class NullPiece < Piece
  include Singleton
  def initialize
  end
end

class Knight < Piece
  def initialize
  end
end

class Bishop < Piece
  def initialize
  end
end

class King < Piece
  def initialize
  end
end