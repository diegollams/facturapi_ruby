require "facturapi_ruby/version"

module FacturapiRuby
  class << self
    # Configuration
    attr_accessor :configuration
    def configure
      self.configuration ||= Configuration.new
      yield(configuration)
    end
  end

  # Configuration
  class Configuration
    attr_accessor :api_key

    def initialize
      @api_key = ''
    end
  end
end
