$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require "codeclimate-test-reporter"
require 'meta_nexus'
require 'dotenv'
require 'support/vcr'
Dotenv.load
CodeClimate::TestReporter.start
