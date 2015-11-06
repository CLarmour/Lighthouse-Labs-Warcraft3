class Barracks

  attr_accessor :gold, :food

  def initialize
    @gold = 1000
    @food = 80
  end

  def train_footman
    return nil if can_train_footman? == false
    @gold -= 135
    @food -= 2
    Footman.new
  end

  def can_train_footman?
    if gold >= 135 && food >= 2
      true
    else
      false
    end
  end

  def train_peasant
    return nil if can_train_peasant? == false
    @gold -= 90
    @food -= 5
    Peasant.new
  end

  def can_train_peasant?
    if gold >= 90 && food >= 5
      true
    else
      false
    end
  end


end
