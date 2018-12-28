require 'facturapi_ruby/version'
require 'facturapi_ruby/configuration'
require 'facturapi_ruby/invoices'
require 'facturapi_ruby/customers'

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
