require 'facturapi_ruby/configuration'
require 'facturapi_ruby/constants'
require 'facturapi_ruby/customers'
require 'facturapi_ruby/files'
require 'facturapi_ruby/invoices'
require 'facturapi_ruby/version'
require 'facturapi_ruby/receipts'
require 'facturapi_ruby/v2/customers'
require 'facturapi_ruby/v2/files'
require 'facturapi_ruby/v2/invoices'
require 'facturapi_ruby/v2/receipts'


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
