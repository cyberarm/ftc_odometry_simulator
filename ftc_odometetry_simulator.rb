require_relative "../cyberarm_engine/lib/cyberarm_engine"

require_relative "lib/window"
require_relative "lib/states/simulator"
require_relative "lib/simulation"
require_relative "lib/simulation/robot"

OdometrySimulator::Window.new(width: 1440, height: 900, resizable: true).show
