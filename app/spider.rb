module Spidock
  class Spider
    include Spidock::Loggable
    attr_reader :browser
    def initialize(browser)
      @browser = browser
    end

    def process
      url = 'www.google.com'
      gotoTargetPage(url)
      log "already go to #{url}"
      puts browser.title
      #TODO do what you want to do with watir libary
    end

    def gotoTargetPage(url)
      browser.goto url
    end

    def handleError(e)
      log '****************'
      #browser.screenshot.save "screenshot.png"
      log_error "error message: \n #{e.message}"
      log_error "error back trace: \n #{e.backtrace.join("\n")}"
    end
  end
end
