class Cell
  attr_accessor :state

  def initialize(state="empty")
    self.state = state
  end

  state_machine :state do
    event :set_empty_shot do
      transition :empty => :empty_shot
    end

    event :set_full_shot do
      transition :full => :full_shot
    end

    state :empty do
      def shoot
        fire_state_event(:set_empty_shot)
      end
    end

    state :empty_shot do
      def shoot
        raise "error"
      end
    end

    state :full do
      def shoot
        fire_state_event(:set_full_shot)
      end
    end

    state :full_shot do
      def shoot
        raise "error"
      end
    end

  end

end
