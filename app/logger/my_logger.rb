module Spidock
  class MyLogger
    include Singleton

    def initialize
      log_dir = 'log'
      unless File.directory?(log_dir)
        FileUtils.mkdir_p(log_dir)
      end
      @logger = Logger.new("log/#{ENV['APP_ENV']}.log", 10, 1024000)
    end

    def info(message)
      @logger.info message
    end

    def error(message)
      @logger.error(message)
    end
  end
end
