require 'spec_helper'

describe Pomodoro do
  it '#start starts a timer' do
    timer = Pomodoro::Timer.new
    timer.start
  end
end
