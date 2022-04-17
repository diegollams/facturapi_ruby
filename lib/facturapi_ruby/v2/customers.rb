# frozen_string_literal: true

require 'facturapi_ruby/http_client'

module FacturapiRuby
  module V2
    module Customers
      class << self
        def create(options)
          HttpClient.post(
            endpoint:    '/v2/customers',
            api_options: options
          )
        end

        def update(customer_id, options)
          HttpClient.put(
            endpoint:    "/v2/customers/#{customer_id}",
            api_options: options
          )
        end

        def validate(customer_id)
          HttpClient.get(
            endpoint: '/v2/customers/{customer_id}/tax-info-validation'
          )
        end
      end
    end
  end
end
