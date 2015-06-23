$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'meta_nexus'
require 'dotenv'
Dotenv.load
Dir['support/*.rb'].each {|file| require file }
