require "facturapi_ruby/version"

module FacturapiRuby

  

  # Configuration
  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :api_key

    def initialize
      @api_key = ''
    end
  end
end
