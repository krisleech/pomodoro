require 'spec_helper'

describe Pomodoro do
  describe '#start' do
    it 'prints starting message' do
      output = double('Output')
      expect(output).to receive(:say).with('Starting')

      timer = Pomodoro::Timer.new(:output => output)
      timer.start
    end
  end
end
