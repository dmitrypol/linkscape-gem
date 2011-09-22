require "logger"
require "linkscape/session_cache"

##
# Basic configuration data for the LSAPI.
# 
# @author Brad Seefeld (brad@urbaninfluence.com)
module Linkscape
  class Configuration
    attr_accessor :cache, :logger, :access_id, :access_key, :cache_for, :timeout, :site
    
    def initialize
      self.cache = Linkscape::SessionCache.new
      self.cache_for = 60
      self.logger = Logger.new(STDOUT)
      self.timeout = 60
      
      # URL to API.
      self.site = "http://lsapi.seomoz.com/linkscape"
    end
  end
end