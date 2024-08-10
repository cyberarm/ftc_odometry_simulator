module OdometrySimulator
  class Window < CyberarmEngine::Window
    def setup
      push_state(States::Simulator)
    end
  end
end
