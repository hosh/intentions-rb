$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift File.expand_path('../..', __FILE__)
require 'intentions'

# Requires supporting ruby files with custom matchers and macros, etc,
# # in spec/support/ and its subdirectories.
Dir["spec/support/**/*.rb"].map { |x| x.gsub(/\.rb$/, '') }.each {|f| require f}
