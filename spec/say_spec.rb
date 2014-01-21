require 'spec_helper'

describe Pomodoro::Say do
  describe '#say' do
    it 'calls say program' do
      expect_any_instance_of(Kernel).to receive(:system)
      say = Pomodoro::Say.new
      say.say('foobar')
    end
  end
end
