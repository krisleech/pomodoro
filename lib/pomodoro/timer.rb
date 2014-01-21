module Pomodoro
  class Stdout
    def say(message)
      puts message
    end
  end

  class Say
    def say(message)
      system "say '#{message}'"
    end
  end

  class Timer
    def initialize(options = {})
      @output = options.fetch(:output, Stdout.new)
    end

    def start
      output.say "Starting"
    end

    private

    def output
      @output
    end
  end
end
