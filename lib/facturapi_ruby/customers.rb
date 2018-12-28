require 'facturapi_ruby/http_client'

module FacturapiRuby
  module Customers
    class << self
      def create(options)
        HttpClient.post(
          endpoint:    '/customers',
          api_options: options
        )
      end
    end
  end
end
