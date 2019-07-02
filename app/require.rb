require 'watir'
require "rubygems"
require "bundler/setup"
require "active_record"
require 'logger'

require_relative  'db'
require_relative  'logger/my_logger'
require_relative  'logger/loggable'
require_relative  'spider'
require_relative  'errors/uniSearchError'
