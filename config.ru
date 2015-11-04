# require 'rack/jekyll'
require 'rack/contrib/try_static'
require 'rack/contrib/not_found'
require 'rack-timeout'
use Rack::Timeout
Rack::Timeout.timeout = 5

use Rack::TryStatic,
	:root => "_site",
	:urls => %w[/],
	:try => ['index.html','index.htm']

run Rack::NotFound.new('_site/404/index.html')

# run Rack::Jekyll.new
# run Rack::Jekyll.new(:destination => '_site')
