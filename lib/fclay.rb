require "fclay/version"
require 'fclay/configuration'
require 'fclay/upload_job'


module Fclay
  class << self  
    def configure(&block)
      yield(configuration)
      configuration
    end
  
    def configuration
      @_configuration ||= Configuration.new
    end
  end
  
end


require "fclay/attachment"
