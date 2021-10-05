class Machine
  def start
    self.flip_switch(:on)
  end

  def stop
    self.flip_switch(:off)
  end

  def current_switch_state
    puts "Currently the switch is '#{switch}'"
  end

  private

  attr_accessor :switch

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end

machine = Machine.new
p machine.start
machine.current_switch_state
p machine.stop
machine.current_switch_state
