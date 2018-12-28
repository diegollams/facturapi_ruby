require "facturapi_ruby/version"
require 'facturapi_ruby/configuration'

module FacturapiRuby
  class << self
    # Configuration
    attr_accessor :configuration
    def configure
      self.configuration ||= Configuration.new
      yield(configuration)
    end
  end 
end
