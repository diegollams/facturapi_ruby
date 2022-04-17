require 'facturapi_ruby/http_client'

module FacturapiRuby
  module Customers
    class << self
      def create(options)
        HttpClient.post(
          endpoint:    '/v1/customers',
          api_options: options
        )
      end

      def update(customer_id, options)
        HttpClient.put(
          endpoint:    "/v1/customers/#{customer_id}",
          api_options: options
        )
      end
    end
  end
end
