require 'facturapi_ruby/http_client'

module FacturapiRuby
  module Invoices
    class << self
      def create(options)
        HttpClient.post(
          endpoint:    '/invoices',
          api_options: options
        )
      end
    end
  end
end
