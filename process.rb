require_relative  'app/require'
module Spidock
  class Processor
    include Loggable
    def start
      #DB.init
      Watir.default_timeout = 60
      handle_uni_search
    end

    def handle_uni_search
      begin
        browser = Watir::Browser.new :firefox, url: 'http://firefox:4444/wd/hub'
        spider = Spider.new(browser)
        spider.process
      rescue => e
        log_error "error message: \n #{e.message}"
        log_error "error back trace: \n #{e.backtrace.join("\n")}"
      ensure
        log 'close the browser'
        browser.close if browser
      end
    end
  end
  Processor.new.start
end
