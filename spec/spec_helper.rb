require 'bundler'
Bundler.require(:default)

require 'pomodoro'
require 'timers'

RSpec.configure do |config|
  config.filter_run :focus
  config.run_all_when_everything_filtered = true

  config.order = 'random'
end
