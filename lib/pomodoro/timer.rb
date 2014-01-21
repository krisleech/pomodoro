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

  class Nullout
    def say(message)
      # noop
    end
  end

  class Timer
    def initialize(options = {})
      @output = options.fetch(:output, Stdout.new)
      @duration = options.fetch(:duration, 5)
    end

    def start
      say "Starting"

      timers = Timers.new

      timer = timers.after(duration) do

        # break_timer = timers.every(1) do
        #   # noop
        # end

        # 10.downto(1) do |num|
        #   timers.wait
        # end

      end

      timers.wait
    end

    private

    def say(message)
      output.say(message)
    end

    def output
      @output
    end

    def duration
      @duration
    end
  end
end
