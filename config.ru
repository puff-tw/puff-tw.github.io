require 'rack/jekyll'
require 'yaml'
require 'rack-timeout'
use Rack::Timeout
Rack::Timeout.timeout = 5
run Rack::Jekyll.new
