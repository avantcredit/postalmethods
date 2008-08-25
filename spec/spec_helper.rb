begin
  require 'spec'
rescue LoadError
  require 'rubygems'
  gem 'rspec'
  require 'spec'
end

$:.unshift(File.dirname(__FILE__) + '/../lib')
require 'postalmethods'

$VERBOSE = nil ##silence annoying warnings from soap4r

PM_OPTS = {:username => 'imajes', :password => 'rubyr00ls'}
