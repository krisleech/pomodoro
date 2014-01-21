require 'spec_helper'

describe Pomodoro::Stdout do
  describe '#say' do
    it 'prints to STDOUT' do
      expect(STDOUT).to receive(:puts).with('foobar')

      stdout = Pomodoro::Stdout.new
      stdout.say('foobar')
    end
  end
end
