module Spidock
  module Loggable
    def log(message)
      MyLogger.instance.info message
    end

    def log_error(message)
      MyLogger.instance.error message
    end
  end
end
