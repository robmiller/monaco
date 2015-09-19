module Monaco
  class Simulation
    def initialize(trials: 10_000, &block)
      @trials = trials
      @block = block
    end

    def run
      events = 0
      1.upto(trials) do |trial|
        if block.call(trial)
          events += 1
        end
      end

      Rational(events, trials)
    end

    private

    attr_reader :trials, :block
  end
end
