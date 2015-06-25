require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'meta_nexus'
require 'dotenv'
require 'support/vcr'
Dotenv.load
