require 'spec_helper'

describe Pomodoro do
  describe '#start' do
    it 'prints starting message' do
      output = double('Output')
      expect(output).to receive(:say).with('Starting')

      timer = Pomodoro::Timer.new(:output => output)
      timer.start
    end

    it 'waits 5 seconds' do
      started_at = Time.now

      timer = Pomodoro::Timer.new(:output   => Pomodoro::Nullout.new,
                                  :duration => 5)
      timer.start

      expect(Time.now - started_at).to be_within(0.05).of 5
    end
  end
end
