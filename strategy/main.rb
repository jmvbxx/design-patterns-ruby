class Duck
  attr_writer :quack_behaviour, :fly_behaviour

  def initialize(quack_behaviour, fly_behaviour)
    @quack_behaviour = quack_behaviour
    @fly_behaviour = fly_behaviour
  end

  def quack
    result = @quack_behaviour.quack
    print result
  end

  def fly
    result = @fly_behaviour.fly
    print result
  end
end

class QuackBehaviour
  def quack
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class FlyBehaviour
  def fly
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class Quack < QuackBehaviour
  def quack
    puts 'Quack!'
  end
end

class FlyWithWings < FlyBehaviour
  def fly
    puts 'I\'m flying!'
  end
end

duck = Duck.new(Quack.new, FlyWithWings.new)
duck.quack
duck.fly
